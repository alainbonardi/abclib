//
import("stdfaust.lib");
//
//uses abclines.dsp file
//
//--------------------------------------------------------------------------------------//
// CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
ramp = nentry("h:matrix/ramp [unit:msec]", 100, 0, 100000, 1); //transition ramp duration in msec//
//
//--------------------------------------------------------------------------------------//
//GENERAL MATRIX//
//--------------------------------------------------------------------------------------//
//matrix of N x M toggles//
//
toggle(c, in) = (nentry("h:matrix/v:Col%2c/m%3in", 0, -1, 1, 0.001), ramp) : line  ;
mixer(N,out) 	= par(in, N, *(toggle(in, in+out*N)) ) :> _ ;
matrix(N,M) 	= par(in, N, _) <: par(out, M, mixer(N, out));
//
