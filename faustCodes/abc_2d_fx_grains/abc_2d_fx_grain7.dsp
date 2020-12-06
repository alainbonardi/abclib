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
declare name "abc_2d_fx_grain7";
//
//--------------------------------------------------------------------------------------//
//SYN GRAIN GENERATES SPATIAL GRANULAR COMPONENTS IN AMBISONICS FROM ONE MONO SIGNAL
//FX DELAY APPLIES GRANULAR TRANSFORMATION TO SPATIAL COMPONENTS ALREADY CREATED
//AT AMBISONIC ORDER N, THERE ARE 2*N+1 GRANULATORS, BEING TEMPORALLY CONTROLLED
//BY 2 PARAMETERS: THE GRAIN SIZE GS AND THE MAX DELAY D
//WE HAVE THE FOLLOWING DISPATCHING
//H					GRAINSIZE				MAXDELAY
//0					GS						0
//-1 & 1			GS - GS/(N+1)			D/(N+1)
//-2 & 2			GS - GS*2/(N+1)			2*D/(N+1)
//-3 & 3			GS - GS*3/(N+1)			3*D/(N+1)
//...
//-(N-1) & (N-1)	GS - GS*(N-1)/(N+1)		(N-1)*D/(N+1)
//-N & N			GS - GS*N/(N+1)			N*D/(N+1)
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//uses abcsinenv.dsp and abcgranu.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
grainsize = hslider("v:synfxgrain/grainsize [unit:msec]", 400, 2, 3000, 1);
grainfreq = 1000. / grainsize;
deltime = hslider("v:synfxgrain/deltime [unit:msec]", 100, 2, 5000, 0.01);
feedback = hslider("v:synfxgrain/feedback", 0, 0, 1, 0.001) :  si.smoo;
rarefaction = hslider("v:synfxgrain/rarefaction", 0.5, 0, 1, 0.001);
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
//COMPUTATION OF INDIVIDUAL GRAIN SIZES AND MAX DELAYS FOR EACH SPATIAL COMPONENT
//--------------------------------------------------------------------------------------//
//
//computes the duration of delays in samples according to the dispatching in the process
//
dur(d, i, p) = d * 2 / (p+1) * (int((i+1)/2)); //max delays in milliseconds for each spatial component
gsize(gs, i, p) = gs - int((i+1) / 2) * gs * 2 / (p+1); //grain sizes in milliseconds for each spatial component
//
syngrain(n, gs, d, fd, s) = ((no.multinoise(2*n), (((_, _) : +) <: si.bus(n))) : inputSort(n)  : par(i, n, granulator(gsize(gs, i, n), dur(d, i, n), s))) ~ (par(i, n, _) :> *(fd));
fxgrain(n, gs, d, fd, s) = ((no.multinoise(2*n), (si.bus(2*n) :> si.bus(n))) : inputSort(n) : par(i, n, granulator(gsize(gs, i, n), dur(d, i, n), s))) ~ (par(i, n, *(fd)));
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
process = fxgrain(15, grainsize, deltime, feedback, rarefaction);
