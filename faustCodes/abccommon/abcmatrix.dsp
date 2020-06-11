//
import("stdfaust.lib");
//
//does not use other .dsp file
//
//--------------------------------------------------------------------------------------//
//GENERAL MATRIX//
//--------------------------------------------------------------------------------------//
//matrix of N x M toggles//
//
toggle(c, in) = checkbox("h:matrix/v:Col%2c/r%3in");
mixer(N,out) 	= par(in, N, *(toggle(in, in+out*N)) ) :> _ ;
matrix(N,M) 	= par(in, N, _) <: par(out, M, mixer(N, out));
//
