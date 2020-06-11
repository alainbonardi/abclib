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
declare name "abc_matrix9";
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
//
process = matrix(9, 9);
