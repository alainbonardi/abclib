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
declare name "abc_flanger8";
//
import("stdfaust.lib");
//
//uses abcsinenv.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
rate = vslider("h:flanger/rate [unit:Hz]", 0.5, 0.01, 500, 0.001) : si.smoo;
depth = vslider("h:flanger/depth [unit:msec]", 40, 0, 1000, 0.001) : si.smoo;
offset = vslider("h:flanger/offset [unit:msec]", 10, 0, 200, 0.001) : si.smoo;
fdbk = vslider("h:flanger/fdbk", 1, 0, 1, 0.001) : si.smoo;
spread = vslider("h:flanger/spread", 0, 0, 1, 0.001) : si.smoo;
//
nsamp = 262144; //maximum capacity of the delay line
//
//Variable delay//
variableDelaySampNumber(i, n, r, d, off, s) = os.phasor(1, r) : + (i * s / n) : ma.decimal : sinusEnvelop : +(1) : *(d) : +(off) : /(1000.) : *(ma.SR);
flanger(i, n, r, d, off, f, s) = _ <: (de.fdelay(nsamp, variableDelaySampNumber(i, n, r, d, off, s)), _) : (*(f), _) : +; //mixes the original signal and the delayed one//
myFlanger(n, r, d, off, f, s) = _ <: par(i, n, flanger(i, n, r, d, off, f, s));
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
process = myFlanger(8, rate, depth, offset, fdbk, spread);
