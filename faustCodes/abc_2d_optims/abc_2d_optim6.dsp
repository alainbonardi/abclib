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
declare name "abc_2d_optim6";
//
//--------------------------------------------------------------------------------------//
//AMBISONIC OPTIMIZATION
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
optimtype = nentry("optimtype", 0, 0, 2, 1);
//
//--------------------------------------------------------------------------------------//
//INPUT DISPATCHING
//--------------------------------------------------------------------------------------//
//starting with 2n values sigA1, sigA2, ... sigAn, sigB1, sigB2, ... sigBn
//the result is the vector sigA1, sigB1, sigA2, sigB2, ..., sigAn, sigBn
//--------------------------------------------------------------------------------------//
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));
//
//--------------------------------------------------------------------------------------//
//A COMBINED OPTIMIZATION FUNCTION ENABLING THREE MODES OF OPTIMIZATION:
//-basic
//-maxRe
//-inPhase
//----------------`optimBasic`-------------------------
// The basic optimization has no effect and should be used for a perfect 
// circle of loudspeakers with one listener at the perfect center loudspeakers 
// array.
//----------------`optimMaxRe`-------------------------
// The maxRe optimization optimize energy vector. It should be used for an 
// auditory confined in the center of the loudspeakers array.
//----------------`optimInPhase`-------------------------
//  The inPhase Optimization optimize energy vector and put all loudspeakers signals 
// in phase. It should be used for an auditory.
//--------------------------------------------------------------------------------------//
optimprocess(n, t) = ((si.bus(2*n+1)  <: ((si.bus(2*n+1):ho.optimBasic(n)), (si.bus(2*n+1):ho.optimMaxRe(n)), (si.bus(2*n+1):ho.optimInPhase(n)))), (((t == 0) <: si.bus(2*n+1)), ((t ==1) <: si.bus(2*n+1)), ((t == 2) <: si.bus(2*n+1)))) : inputSort(6*n+3) : par(i, 6*n+3, *) :> si.bus(2*n+1);
//
process = optimprocess(6, optimtype);
