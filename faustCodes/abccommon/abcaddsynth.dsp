//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//


//----------------------------------ABC ADDSYNTH----------------------------------------//

import("../abccommon/abcutilities.dsp");

//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//fundamental frequency//
f0 = nentry("v:AddSynth/h:General/f0 [unit:Hz]", 110, 0.01, 15000, 0.01);

gain = hslider("v:AddSynth/h:General/gain [unit:dB]", -15, -127, 18, 0.01) : smoothLine : dbcontrol;

amp(ind) = hslider("v:AddSynth/h:Partials/v:Gains/amp%2ind", (ba.linear2db(1/(ind+1))), -127, 18, 0.01) : smoothLine : dbcontrol;

//frequency multipliers (harmonic by default :f, 2*f, 3*f, etc.))//
fmult(ind) = nentry("v:AddSynth/h:Partials/v:Multipliers/fmult%2ind", (ind+1), 0, 1000, 0.00001);

//beats - second oscillator shifted of a few Hz (by default 0)
fbeat(ind) = nentry("v:AddSynth/h:Partials/v:PlusBeats/fbeat%2ind [unit:Hz]", 0, 0, 20, 0.01);

//--------------------------------------------------------------------------------------//
//DEFINITION OF A DOUBLE OSCILLATOR
//
//2 oscillators shifted//
//f is the fundamental, n the multiplier, deltaf the shift frequency to get a beat//
doubleoscillator(f, n, deltaf) = (f*n) <: (_, +(deltaf)) : (os.osci, os.osci) : + : *(0.5);

//--------------------------------------------------------------------------------------//
//DEFINITION OF AN ADDITIVE SYNTHESIS
//
//defined as a multiple oscillator with frequencies that are specific multiples of a fondamental
//with amplitude and beat setting
//--------------------------------------------------------------------------------------//

multiosc(n) = par(i, n, doubleoscillator(f0, fmult(i), fbeat(i)) : *(amp(i)) : *(gain)) ;
