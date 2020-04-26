
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
declare name "abc_phasor2pi";
//
//A PHASOR WITH AN OUTPUT BETWEEN 0 AND 2*PI
//
import("stdfaust.lib");
import("../abccommon/abcutilities.dsp");
//
freq = hslider("v:phasor2pi/freq [unit:s-1]", 0.1, 0, 20000, 0.00001);
//
process = phasor2pi(freq);
