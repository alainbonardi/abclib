
//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2020 -----------------------------//
//--------------------------------------------------------------------------------------//
declare name abc_encoder5;
declare author Alain Bonardi;
declare licence GPLv3;
import(stdfaust.lib);
import(../abccommon/abc2dencoder.dsp);
ao = 5;
process = freqPhaseEncoder(rotfreq, rotphase, returntime);
