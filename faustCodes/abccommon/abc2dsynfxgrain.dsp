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
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
grainsize = hslider("v:synfxgrain/grainsize [unit:msec]", 400, 10, 5000, 1);
grainfreq = 1000. / grainsize;
deltime = hslider("v:synfxgrain/deltime [unit:msec]", 100, 2, 10000, 0.01);
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