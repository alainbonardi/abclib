
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
declare name "abc_scope4";
//
//SCOPE OBJECTS FOR AMBISONIC VIZUALISATION USING MAX SCOPE~ OBJECT
//
import("stdfaust.lib");
import("../abccommon/abcd2dscope.dsp");
//
n = 4;//ambisonic order//
process = (rho <: (_, _) : (*(sin(theta)), *(cos(theta))) : (*(-1), _));
