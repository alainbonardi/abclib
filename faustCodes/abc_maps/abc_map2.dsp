
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
declare name "abc_map2";
//
//AMBISONIC MAPS TO SPATIALIZE ONE PUNCTUAL SOURCE
//IN POLAR COORDINATES
//
import("stdfaust.lib");
import("../abccommon/abc2dmap.dsp");
//
ao = 2;//ambisonic order//
//
//first input is the signal
//second input is the radius
//third output is the angle
//
process = (_, _, _) : myMap;
