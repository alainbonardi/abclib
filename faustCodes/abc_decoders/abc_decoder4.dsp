
//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2020 -----------------------------//
//--------------------------------------------------------------------------------------//
declare name abc_decoder4;
declare author Alain Bonardi;
declare licence GPLv3;
import(stdfaust.lib);
import(../abccommon/abc2ddecoder.dsp);
//the number of outputs at order i is always forced to 2*i+2 to have an even number of LS//
process = mydecoder(4, 10);
