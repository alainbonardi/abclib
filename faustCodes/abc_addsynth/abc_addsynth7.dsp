
//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2020 -----------------------------//
//--------------------------------------------------------------------------------------//
declare name abc_addsynth7;
declare author Alain Bonardi;
declare licence GPLv3;
import(stdfaust.lib);
import(../abccommon/abcaddsynth.dsp);
process = multiosc(7);
