
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
declare name "abc_decoder6";
//
//AMBISONIC DECODERS
//
import("stdfaust.lib");
import("../abccommon/abc2ddecoder.dsp");
//
//the number of outputs at order i is always forced to 2*i+2 to have an even number of LS//
//first parameter of the decoder is the ambisonic order//
//second parameter of the decoder is the number of loudspeakers//
//
process = mydecoder(6, 14);
