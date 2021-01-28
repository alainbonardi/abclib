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
declare name "abc_2d_syn_delay5";
//
//--------------------------------------------------------------------------------------//
//SYN DELAY GENERATES SPATIAL DELAYED COMPONENTS IN AMBISONICS FROM ONE MONO SIGNAL
//FX DELAY APPLIES DELAYS TO SPATIAL COMPONENTS ALREADY CREATED
//THE 2*N+1 DELAYS ARE EQUALLY SPREAD BETWEEN DELTIME/(N+1) AND DELTIME WHICH IS THE MAXIMUM
//H0 HAS A DELAY OF DELTIME/N, H-1 AND H1 OF 2*DELTIME/N, ETC.
//
//H					DELAY
//0					DELTIME/(N+1)
//-1 & 1			2*DELTIME/(N+1)
//-2 & 2			3*DELTIME/(N+1)
//-3 & 3			4*DELTIME/(N+1)
//...
//-(N-1)& (N-1)		N*DELTIME/(N+1)
//-N & N			DELTIME	
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
window = hslider("v:synfxdelay/window [unit:msec]", 400, 10, 1000, 1);
winfreq = 1000. / window;
deltime = hslider("v:synfxdelay/deltime [unit:msec]", 100, 2, 10000, 0.01);
feedback = hslider("v:synfxdelay/feedback", 0, 0, 1, 0.001) :  si.smoo;
//
//--------------------------------------------------------------------------------------//
//CONVERTS A DURATION IN MILLISECONDS INTO A NUMBER OF SAMPLES
//--------------------------------------------------------------------------------------//
//computes the ith duration of the ith delay and converts it to samples
//
durToSamp(d, i, p) = d * 2 / (p+1) * (1 + int((i+1)/2)) * 0.001 * ma.SR;
//
//Double overlapped delays with a maximum capacity of storage of 524288 samples, 
//which is roughly 10,92 seconds at 48Khz
//
fxdelay(n, durmax, f, fd) = par(i, n, fdOverlappedDoubleDelay(durToSamp(durmax, i, n), 524288, f, fd));
syndelay(n, durmax, f, fd) = _ <: si.bus(n) : fxdelay(n, durmax, f, fd);
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
process = syndelay(11, deltime, winfreq, feedback);
