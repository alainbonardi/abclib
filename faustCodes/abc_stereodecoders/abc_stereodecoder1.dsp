
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
declare name "abc_stereodecoder1";
//
//AMBISONIC ENCODERS
//
import("stdfaust.lib");
import("../abccommon/abc2dstereodecoder.dsp");
//
ao = 1;//ambisonic order//
process = mystereodecoder(ao);
