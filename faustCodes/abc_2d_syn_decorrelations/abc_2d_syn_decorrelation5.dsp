//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//-----------------------BY ALAIN BONARDI & PAUL GOUTMANN - 2019-2021 ------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi & Paul Goutmann";
declare licence "LGPLv3";
declare name "abc_2d_syn_decorrelation5";
//
//--------------------------------------------------------------------------------------//
//SYN DECORRELATION GENERATES SPATIAL DECORRELATED COMPONENTS IN AMBISONICS FROM ONE MONO SIGNAL
//FX DELAY APPLIES DECORRELATIONS TO SPATIAL COMPONENTS ALREADY CREATED
//THE DECORRELATION IS DEFINED FOR EACH SPATIAL COMPONENT AMONG P=2*N+1 AT THE AMBISONIC ORDER N
//AS A DELAY OF 0 IF FACTOR IS UNDER A CERTAIN VALUE 1-(i+1)/P AND DELAY*F((i+1)/P) IN THE CONTRARY CASE
//THE USER CAN CHOOSE THE TYPE OF DELAY TIME DISTRIBUTION AMONG 22 DIFFERENT DISTRIBUTIONS
//AS IN SYN OR FX DELAY THE DELAY INCREASES ACCORDING TO THE INDEX OF COMPONENTS
//BUT IT INCREASES AT EACH STEP AND IT IS MODULATED BY A THRESHOLD
//THEREFORE DELAYS ARE PROGRESSIVELY REVEALED WHEN THE FACTOR INCREASES
//WHEN THE FACTOR IS CLOSE TO 0, ONLY UPPER COMPONENTS ARE DELAYED
//WHEN THE FACTOR INCREASES, MORE AND MORE COMPONENTS ARE DELAYED
//
//H					THRESHOLD			DELAY
//0					1-1/P				0 OR DELAY*F(1/P)
//-1				1-2/P				0 OR DELAY*F(2/P)
//1					1-3/P				0 OR DELAY*F(3/P)
//-2				1-4/P				0 OR DELAY*F(4/P)
//2					1-5/P				0 OR DELAY*F(5/P)
//...
//-(N-1)			1-(P-3)/P			0 OR DELAY*F((P-3)/P)
//(N-1)				1-(P-2)/P			0 OR DELAY*F((P-2)/P)
//-N				1-(P-1)/P			0 OR DELAY*F((P-1)/P)
//N					1-P/P				0 OR DELAY*F(P/P)
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
delay = hslider("v:synfxdecorrelation/delay [unit:samples]", 48000, 10, 262144, 1);
window = 100; //by default a window of 100 milliseconds for the interpolation of delays//
winfreq = 1000. / window;
factor = hslider("v:synfxdecorrelation/factor", 0, 0, 1, 0.001);
fdbk = hslider("v:synfxdecorrelation/fdbk", 0, 0, 0.99, 0.001);
functiontype = hslider("v:synfxdecorrelation/functiontype", 0, 0, 21, 1);
//
//--------------------------------------------------------------------------------------//
//TYPES OF DISTRIBUTION 
//--------------------------------------------------------------------------------------//
th(0, i, p) = (i+1) / p;
th(1, i, p) = ((i+1) / p)^2;
th(2, i, p) = sin(ma.PI * 0.5 * (i+1) / p);
th(3, i, p) = log10(1 + (i+1) / p) / log10(2);
th(4, i, p) = sqrt((i+1) / p);
th(5, i, p) = 1 - cos(ma.PI * 0.5 * (i+1) / p);
th(6, i, p) = (1 - cos(ma.PI * (i+1) / p)) * 0.5;
th(7, i, p) = 1 - (1 - (i+1) / p )^2;
th(8, i, p) = ((i+1) / p < 0.5) * 2 * ((i+1) / p)^2 + ((i+1) / p >= 0.5) * (1 - (-2 * (i+1) / p + 2)^2 * 0.5) ;
th(9, i, p) = ((i+1) / p)^3 ;
th(10, i, p) = 1 - (1 - (i+1) / p)^3 ;
th(11, i, p) = ((i+1) / p < 0.5) * 4 * ((i+1) / p)^3 + ((i+1) / p >= 0.5) * (1 - (-2 * (i+1) / p + 2)^3 * 0.5) ;
th(12, i, p) = ((i+1) / p)^4 ; 
th(13, i, p) = 1 - (1 - (i+1) / p)^4 ;
th(14, i, p) = ((i+1) / p < 0.5) * 8 * ((i+1) / p)^4 + ((i+1) / p >= 0.5) * (1 - (-2 * (i+1) / p + 2)^4 * 0.5) ;
th(15, i, p) = ((i+1) / p)^5 ; 
th(16, i, p) = 1 - (1 - (i+1) / p)^5 ;
th(17, i, p) = ((i+1) / p < 0.5) * 16 * ((i+1) / p)^5 + ((i+1) / p >= 0.5) * (1 - (-2 * (i+1) / p + 2)^5 * 0.5) ;
th(18, i, p) = 2^(10 * (i+1) / p - 10) ;
th(19, i, p) = ((i+1) / p < 1) * (1 - 2^(-10 * (i+1) / p)) + ((i+1) / p == 1) ;
th(20, i, p) = 1 - sqrt(1 - ((i+1) / p)^2) ; 
th(21, i, p) = sqrt(1 - ((i+1) / p - 1)^2) ;
//
//--------------------------------------------------------------------------------------//
//COMPUTES DURATIONS IN SAMPLES ACCORDING TO THE INDEX OF THE SPATIAL COMPONENT AND THE DELAY//
//--------------------------------------------------------------------------------------//
//computes the ith duration of the ith delay in samples with twenty two possibilities of distribution
//
elemdur(d, i, p, fa, tf, ind) = (tf == ind) * (fa > (1 - x)) * d * x with {
	x = th(ind, i, p);
};
//
//duration in samples computed as a sum of the 22 cases//
//
dur(d, i, p, fa, tf) = sum(ind, 22, elemdur(d, i, p, fa, tf, ind)) : int;
//
//Double overlapped delays with a capacity of storage of 262144 samples
//which is roughly 5,46 seconds at 48 KHz
//
fxdecorrelation(n, d, f, fa, fd, tf) = par(i, n, fdOverlappedDoubleDelay(dur(d, i, n, fa, tf), 262144, f, fd));
syndecorrelation(n, d, f, fa, fd, tf) = _ <: si.bus(n) : fxdecorrelation(n, d, f, fa, fd, tf);
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
process = syndecorrelation(11, delay, winfreq, factor, fdbk, functiontype);
