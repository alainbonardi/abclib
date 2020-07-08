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
declare name "abc_2d_wider2";
//
//--------------------------------------------------------------------------------------//
//AMBISONIC WIDENING
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
width = hslider("width", 0, 0, 1, 0.01) : si. smoo;
//
//--------------------------------------------------------------------------------------//
//----------------`wider`-------------------------
// Can be used to widen the diffusion of a localized sound. The order 
// depending signals are weighted and appear in a logarithmic way to 
// have linear changes.
//
//--------------------------------------------------------------------------------------//
widerprocess(n, w) = ho.wider(n, w);
//
process = widerprocess(2, width);
