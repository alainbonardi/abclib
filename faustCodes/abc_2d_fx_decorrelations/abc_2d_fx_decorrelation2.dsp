//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//----------------------------- BY ALAIN BONARDI - 2019-2021 ---------------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi";
declare licence "LGPLv3";
declare name "abc_2d_fx_decorrelation2";
//
//--------------------------------------------------------------------------------------//
//SYN DECORRELATION GENERATES SPATIAL DECORRELATED COMPONENTS IN AMBISONICS FROM ONE MONO SIGNAL
//FX DELAY APPLIES DECORRELATIONS TO SPATIAL COMPONENTS ALREADY CREATED
//THE DECORRELATION IS DEFINED FOR EACH SPATIAL COMPONENT AMONG P=2*N+1 AT THE AMBISONIC ORDER N
//AS A DELAY OF 0 IF FACTOR IS UNDER A CERTAIN VALUE 1-(i+1)/P AND OF I*DELAY/P IN THE CONTRARY CASE
//AS IN SYN OR FX DELAY THE DELAY INCREASES ACCORDING TO THE INDEX OF COMPONENTS
//BUT IT INCREASES AT EACH STEP AND IT IS MODULATED BY A THRESHOLD
//THEREFORE DELAYS ARE PROGRESSIVELY REVEALED WHEN THE FACTOR INCREASES
//WHEN THE FACTOR IS CLOSE TO 0, ONLY UPPER COMPONENTS ARE DELAYED
//WHEN THE FACTOR INCREASES, MORE AND MORE COMPONENTS ARE DELAYED
//
//H					THRESHOLD			DELAY
//0					1-1/P				0 OR DELAY/P
//-1				1-2/P				0 OR 2*DELAY/P
//1					1-3/P				0 OR 3*DELAY/P
//-2				1-4/P				0 OR 4*DELAY/P
//2					1-5/P				0 OR 5*DELAY/P
//...
//-(N-1)			1-(P-3)/P			0 OR (P-3)*DELAY/P
//(N-1)				1-(P-2)/P			0 OR (P-2)*DELAY/P
//-N				1-(P-1)/P			0 OR (P-1)*DELAY/P
//N					1-P/P				0 OR P*DELAY/P
//
//THE PURPOSE IS TO EXPLORE TEMPORAL DECORRELATION BETWEEN SPATIAL COMPONENTS
//EITHER BY CREATING P DELAYED COPIES OF THE INCOMING SIGNAL (SYN DELAY)
//OR BY ADDING DELAYS TO THE ALREADY EXISTING P SPATIAL COMPONENTS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//uses abcsinenv.dsp and abcdoubledelay.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
delay = hslider("v:synfxdecorrelation/delay [unit:samples]", 44100, 10, 262144, 1);
window = 100; //by default a window of 100 milliseconds for the interpolation of delays//
winfreq = 1000. / window;
factor = hslider("v:synfxdecorrelation/factor", 0, 0, 1, 0.001);
//
//--------------------------------------------------------------------------------------//
//COMPUTES DURATIONS IN SAMPLES ACCORDING TO THE INDEX OF THE SPATIAL COMPONENT AND THE DELAY//
//--------------------------------------------------------------------------------------//
//computes the ith duration of the ith delay in samples
//
dur(d, i, p, fa) = int((fa > (1 - (i+1) / p)) * (i+1) * d / p); //the delay is either 0 (when factor fa < 1-(i+1)/p) or (i+1)*delay /p
//
//Double overlapped delays with a capacity of storage of 262144 samples
//which is roughly 5,46 seconds at 48 KHz
//
fxdecorrelation(n, d, f, fa) = par(i, n, overlappedDoubleDelay(dur(d, i, n, fa), 262144, f));
syndecorrelation(n, d, f, fa) = _ <: si.bus(n) : fxdecorrelation(n, d, f, fa);
//
//--------------------------------------------------------------------------------------//
// SINUS ENVELOPE
//--------------------------------------------------------------------------------------//
//
tablesize = 1 << 16;
sinustable = os.sinwaveform(tablesize);
//
sinusEnvelop(phase) = s1 + d * (s2 - s1)
	with {
			zeroToOnePhase = phase : ma.decimal;
			myIndex = zeroToOnePhase * float(tablesize);
			i1 = int(myIndex);
			d = ma.decimal(myIndex);
			i2 = (i1+1) % int(tablesize);
			s1 = rdtable(tablesize, sinustable, i1);
			s2 = rdtable(tablesize, sinustable, i2);
};
//
//--------------------------------------------------------------------------------------//
//DOUBLE OVERLAPPED DELAY
//--------------------------------------------------------------------------------------//
//nsamp is the number of samples of delay
//freq is the frequency of envelopping for the overlapping between the 2 delay lines
//
//--------------------------------------------------------------------------------------//
// PHASOR THAT ACCEPTS BOTH NEGATIVE AND POSITIVE FREQUENCES
//--------------------------------------------------------------------------------------//
pdPhasor(f) = os.phasor(1, f);
//
//An overlapped delay without reinjection//
//
overlappedDoubleDelay(nsamp, nmax, freq) = doubleDelay
	with {
			env1 = freq : pdPhasor : sinusEnvelop : *(0.5) : +(0.5);
			env1c = 1 - env1;
			th1 = (env1 > 0.001) * (env1@1 <= 0.001); //env1 threshold crossing
			th2 = (env1c > 0.001) * (env1c@1 <= 0.001); //env1c threshold crossing
			nsamp1 = nsamp : ba.sAndH(th1);
			nsamp2 = nsamp : ba.sAndH(th2);
			doubleDelay =	_ <: (de.delay(nmax, nsamp1), de.delay(nmax,nsamp2)) : (*(env1), *(env1c)) : + ;
		};
//
//A double overlapped delay with reinjection//
//
fdOverlappedDoubleDelay(nsamp, nmax, freq, fd) = (+ : overlappedDoubleDelay(nsamp, nmax, freq)) ~ (*(fd));
//
process = fxdecorrelation(5, delay, winfreq, factor);
