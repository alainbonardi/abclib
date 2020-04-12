//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//

declare name "abc_cartopol";
declare author "Alain Bonardi";
declare licence "GPLv3";

import("stdfaust.lib");
import("../abccommon/abcutilities.dsp");

freq = hslider("v:phasor2pi/freq [unit:s-1]", 0.1, 0, 20000, 0.00001);

process = phasor2pi(freq);