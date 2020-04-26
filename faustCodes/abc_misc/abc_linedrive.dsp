
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
declare name "abc_linedrive";
//
//A LINE DRIVE FUNCTION TO SCALE NUMBERS EXPONENTIALLY
//
import("stdfaust.lib");
import("../abccommon/abcutilities.dsp");
//
outputmax = hslider("outputmax", 1, 0, 100000, 0.01);
expcurve = hslider("expcurve", 1.06, 0.00001, 2., 0.00001);
//
process = (_, 30, 127, outputmax, expcurve, 30) : pdLineDrive;
