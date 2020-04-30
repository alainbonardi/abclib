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
declare name "abc_randenv16";
//
import("stdfaust.lib");
//
shortening = hslider("h:RandomEnv/shortening", 0.5, 0, 1, 0.01) : si.smoo;
freq = nentry("h:RandomEnv/freq", 10, 0.01, 100, 0.01) : si.smoo;
//
//--------------------------------------------------------------------------------------//
tablesize = 1 << 16;
sinustable = os.sinwaveform(tablesize);
//
//--------------------------------------------------------------------------------------//
// SINUS ENVELOPE
//--------------------------------------------------------------------------------------//
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
//INPUT DISPATCHING
//--------------------------------------------------------------------------------------//
//
//starting with 2n values sigA1, sigA2, ... sigAn, sigB1, sigB2, ... sigBn
//the result is the vector sigA1, sigB1, sigA2, sigB2, ..., sigAn, sigBn
//--------------------------------------------------------------------------------------//
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));
//
//--------------------------------------------------------------------------------------//
//ENVELOPPE TO SHORTEN ONE SOUND
//--------------------------------------------------------------------------------------//
shorteningEnv(f, s) = ((ramp : *(0.5) : sinusEnvelop), _) : *(factor)
	with {
			randTest = (_, (s : *(2) : -(1))) : >;
			ramp = os.phasor(1, f);
			th = (ramp > 0.001) * (ramp@1 <= 0.001);
			factor = randTest : ba.sAndH(th);
	};
//
//--------------------------------------------------------------------------------------//
//A SET OF ENVELOPPES TO SHORTEN SEVERAL SOUNDS IN PARALLEL
//--------------------------------------------------------------------------------------//
mTShorteningEnv(n, f, s) = no.multinoise(n) : par(i, n, shorteningEnv(f, s));
//
//--------------------------------------------------------------------------------------//
//A SET OF SEVERAL SOUNDS ENVELOPED
//--------------------------------------------------------------------------------------//
//
mTShortening(n, f, s) = par(i, n, _), mTShorteningEnv(n, f, s) : inputSort(n) : par(i, n, *);
//
process = mTShortening(16, freq, shortening);
