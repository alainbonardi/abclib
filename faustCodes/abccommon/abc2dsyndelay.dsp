//
//--------------------------------------------------------------------------------------//
//SYN DELAY ON SPATIAL COMPONENTS IN AMBISONICS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
window = nentry("syndelay/window [unit:msec]", 400, 10, 1000, 1);
deltime = nentry("syndelay/deltim [unit:msec]", 1000, 10, 10000, 0.01);
//
//--------------------------------------------------------------------------------------//
//FUNCTIONS
//--------------------------------------------------------------------------------------//
//
//converts a duration in milliseconds into a number of samples
//
toSamp(d) = d * 0.001 * ma.SR;
//
//double delay with 
//
maxSampSize = 1048576;
tablesize = 1 << 16;
sinustable = os.sinwaveform(tablesize);
//
delay21s(nsamp) = de.delay(maxSampSize, nsamp);
//
//sinus envelop
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
//overlapped double delay
//
overlappedDoubleDelay21s(nsamp, freq) = doubleDelay
	with {
			env1 = os.phasor(freq) : sinusEnvelop : *(0.5) : +(0.5);
			env1c = 1 - env1;
			th1 = (env1 > 0.001) * (env1@1 <= 0.001); //env1 threshold crossing
			th2 = (env1c > 0.001) * (env1c@1 <= 0.001); //env1c threshold crossing
			nsamp1 = nsamp : ba.sAndH(th1);
			nsamp2 = nsamp : ba.sAndH(th2);
			doubleDelay =	_ <: (delay21s(nsamp1), delay21s(nsamp2)) : (*(env1), *(env1c)) : + ;
		};
//
doubleDelay21s(nsamp, f) = overlappedDoubleDelay21s(nsamp, f);
//
doubleDelaySet(n, durmax) = par(i, n, doubleDelay21s(toSamp(durmax * (i+1) / n)));

//process = doubleDelaySet(7, deltime);
process = overlappedDoubleDelay21s(256, 30);