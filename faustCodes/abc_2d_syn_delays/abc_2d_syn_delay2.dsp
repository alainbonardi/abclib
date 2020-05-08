//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//----------------------------- BY ALAIN BONARDI - 2019-2020 ---------------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi";
declare licence "GPLv3";
declare name "abc_2d_syn_delay2";
//
//--------------------------------------------------------------------------------------//
//SYN DELAY GENERATES SPATIAL DELAYED COMPONENTS IN AMBISONICS FROM ONE MONO SIGNAL
//FX DELAY APPLIES DELAYS TO SPATIAL COMPONENTS ALREADY CREATED
//IF WE ARE AT ORDER N IN AMBISONICS, THE NUMBER OF SPATIAL COMPONENTS IS P = 2*N+1
//THE P DELAYS ARE EQUALLY SPREAD BETWEEN DELTIME / P AND DELTIME WHICH IS THE MAXIMUM
//THE PURPOSE IS TO EXPLORE TEMPORAL DECORRELATION BETWEEN SPATIAL COMPONENTS
//EITHER BY CREATING P DELAYED COPIES OF THE INCOMING SIGNAL (SYN DELAY)
//OR BY ADDING DELAYS TO THE ALREADY EXISTING P SPATIAL COMPONENTS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
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
// PHASOR THAT ACCEPTS BOTH NEGATIVE AND POSITIVE FREQUENCES
//--------------------------------------------------------------------------------------//
pdPhasor(f) = os.phasor(1, f);
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
//CONVERTS A DURATION IN MILLISECONDS INTO A NUMBER OF SAMPLES
//--------------------------------------------------------------------------------------//
//
toSamp(d) = d * 0.001 * ma.SR;
//
//--------------------------------------------------------------------------------------//
//DOUBLE OVERLAPPED DELAY
//--------------------------------------------------------------------------------------//
//nsamp is the number of samples of delay
//freq is the frequency of envelopping for the overlapping between the 2 delay lines
//
maxSampSize = 1048576; //roughly a capacity of 21,84 sec of delay at sampling rate = 48KHz//
delay21s(nsamp) = de.delay(maxSampSize, nsamp);
//
overlappedDoubleDelay21s(nsamp, freq) = doubleDelay
	with {
			env1 = freq : pdPhasor : sinusEnvelop : *(0.5) : +(0.5);
			env1c = 1 - env1;
			th1 = (env1 > 0.001) * (env1@1 <= 0.001); //env1 threshold crossing
			th2 = (env1c > 0.001) * (env1c@1 <= 0.001); //env1c threshold crossing
			nsamp1 = nsamp : ba.sAndH(th1);
			nsamp2 = nsamp : ba.sAndH(th2);
			doubleDelay =	_ <: (delay21s(nsamp1), delay21s(nsamp2)) : (*(env1), *(env1c)) : + ;
		};
fdOverlappedDoubleDelay21s(nsamp, freq, fd) = (+ : overlappedDoubleDelay21s(nsamp, freq)) ~ (*(fd));
//
fxdelay(n, durmax, f, fd) = par(i, n, fdOverlappedDoubleDelay21s(toSamp(durmax * (i+1) / n), f, fd));
sindelay(n, durmax, f, fd) = _ <: si.bus(n) : fxdelay(n, durmax, f, fd);
//
process = sindelay(5, deltime, winfreq, feedback);
