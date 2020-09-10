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