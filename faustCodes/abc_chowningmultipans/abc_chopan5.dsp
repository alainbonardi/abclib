
//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2020 -----------------------------//
//--------------------------------------------------------------------------------------//
declare name abc_chopan5;
declare author Alain Bonardi;
declare licence GPLv3;
import(stdfaust.lib);
import(../abccommon/abcchowningmultipan.dsp);
process = chowningPan(5);
