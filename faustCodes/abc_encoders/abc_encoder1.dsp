
//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2020 -----------------------------//
//--------------------------------------------------------------------------------------//
declare name abc_encoder1;
declare author Alain Bonardi;
declare licence GPLv3;
import(stdfaust.lib);
import(../abccommon/abc2dencoder.dsp);
ao = 1;
process = freqPhaseEncoder(rotfreq, rotphase, returntime);
