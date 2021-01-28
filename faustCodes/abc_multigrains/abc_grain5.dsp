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
declare name "abc_grain5";
import("stdfaust.lib");
//
//uses abcsinenv.dsp and abcgranu.dsp
//
//array of granulators, each of them having 4 control parameters: grainsize (msec), deltime (msec), feedback, rarefaction
//
//--------------------------------------------------------------------------------------//
//4 CONTROL PARAMETERS BY GRANULATOR
//--------------------------------------------------------------------------------------//
//
gs(ind) = hslider("h:multigrains/v:grainsizes/gs%2ind [unit:msec]", 400, 2, 3000, 1);
dt(ind) = hslider("h:multigrains/v:delsmax/dt%2ind [unit:msec]", 100, 2, 5000, 0.01);
fdbk(ind) = hslider("h:multigrains/v:fdbks/fdbk%2ind", 0, 0, 0.99999, 0.0001) : si.smoo;
rrf(ind) = hslider("h:multigrains/v:rarefactions/rrf%2ind", 0.5, 0, 1, 0.001);
//
//--------------------------------------------------------------------------------------//
//INPUT DISPATCHING
//--------------------------------------------------------------------------------------//
//starting with 3n values sigA1, sigA2, ... sigAn, sigB1, sigB2, ... sigBn, sigC1, sigC2, ..., sigCn
//the result is the vector sigA1, sigC1, sigB1, sigA2, sigC2, sigB2, ..., sigAn, sigCn, sigBn
//--------------------------------------------------------------------------------------//
inputSort(n) = si.bus(3*n) <: par(i, n, (ba.selector(i, 3*n), ba.selector(i+2*n, 3*n), ba.selector(i+n, 3*n)));
//
//--------------------------------------------------------------------------------------//
//DEFINITION OF A MULTIGRAIN PROCESS AS AN ARRAY OF N PARALLEL GRANULATORS
//--------------------------------------------------------------------------------------//
//
multigrain(n) = ((no.multinoise(2*n), (si.bus(2*n) :> si.bus(n))) : inputSort(n) : par(i, n, granulator(gs(i), dt(i), rrf(i)))) ~ (par(i, n, *(fdbk(i))));
//
//--------------------------------------------------------------------------------------//
//GRANULATOR ON DELAY LINE WITH GS GRAIN SIZE, D AS MAXIMUM DELAY, S AS RAREFACTION
//USES A COSINUS ENVELOP
//--------------------------------------------------------------------------------------//
//
granulator(gs, d, s) = (_, _, _) : (env, _, del) : (_, de.delay(262144, _)) : *
	with {
			//gs is the grain size in milliseconds//
			//d is the max delay in milliseconds//
			//s is the rarefaction between 0 and 1//
			//the capacity of storage of the delay line is 262144 which is roughly 5,46 sec of delay at 48KHz
			f = 1000. / gs; //f is the frequency of the grain
			ramp = os.phasor(1, f);
			th = (ramp > 0.001) * (ramp@1 <= 0.001);
			randTest = (_, (s : *(2) : -(1))) : >;
			factor = randTest : ba.sAndH(th);
			env = ((ramp : *(0.5) : sinusEnvelop), _) : *(factor);
			del = +(1) : *(0.5) : *(d) : *(0.001) : *(ma.SR) : int : ba.sAndH(th);
		};		 
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
process = multigrain(5);
