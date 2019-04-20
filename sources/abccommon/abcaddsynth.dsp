//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//


//COMMON FAUST CODE FOR ADDITIVE SYNTHESIS//

import("../abccommon/abcsmoothline.dsp");
import("../abccommon/abcdbcontrol.dsp");

//fundamental frequency//
f0 = nentry("v:AddSynth/h:General/f0 [unit:Hz]", 110, 0.01, 15000, 0.01);

//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GENERAL VOLUME IN DB
//--------------------------------------------------------------------------------------//
vol = hslider("v:AddSynth/h:General/vol [unit:dB]", 0, -127, 18, 0.01) : smoothLine : dbcontrol;

gain(ind) = hslider("v:AddSynth/h:Partials/v:Gains/gain%2ind", (ba.linear2db(1/(ind+1))), -127, 18, 0.01) : smoothLine : dbcontrol;

//frequency multipliers (harmonic by default :f, 2*f, 3*f, etc.))//
freqMult(ind) = nentry("v:AddSynth/h:Partials/v:Frequencies/freqMult%2ind", (ind+1), 0, 1000, 0.00001);

//beats - second oscillator shifted of a few Hz (by default 0)
beatFreq(ind) = nentry("v:AddSynth/h:Partials/v:PlusBeats/beatFreq%2ind [unit:Hz]", 0, 0, 20, 0.01);

//2 oscillators shifted//
//f is the fundamental, n the multiplier, deltaf the shift frequency to get a beat//
doubleOscillator(f, n, deltaf) = (f*n) <: (_, +(deltaf)) : (os.osci, os.osci) : + : *(0.5);

//--------------------------------------------------------------------------------------//
//DEFINITION OF AN ADDITIVE SYNTHESIS
//
//defined as a multiple oscillator with frequencies that are specific multiples of a fondamental
//with amplitude and beat setting
//--------------------------------------------------------------------------------------//

multiOsc(n) = par(i, n, doubleOscillator(f0, freqMult(i), beatFreq(i)) : *(gain(i))) :> *(vol);
