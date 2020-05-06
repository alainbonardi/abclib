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
declare name "abc_addsynth12";
//
//--------------------------------------------------------------------------------------//
//MULTICHANNEL DOUBLE OSCILLATORS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//fundamental frequency//
f0 = nentry("v:addsynth/f0 [unit:Hz]", 220, 0.01, 15000, 0.01);
//general gain//
gain = hslider("v:addsynth/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//amplitude of each partial
amp(ind) = hslider("v:addsynth/h:partials/v:amps/amp%2ind", (ba.linear2db(1/(ind+1))), -127, 18, 0.01) : dbtogain;
//frequency multipliers (harmonic by default :f, 2*f, 3*f, etc.))//
fmult(ind) = nentry("v:addsynth/h:partials/v:fmults/fmult%2ind", (ind+1), 0, 1000, 0.00001);
//beats - second oscillator shifted of a few Hz (by default 0)
fbeat(ind) = nentry("v:addsynth/h:partials/v:fbeats/fbeat%2ind [unit:Hz]", 0, 0, 20, 0.01);
//
//--------------------------------------------------------------------------------------//
//DEFINITION OF A DOUBLE OSCILLATOR
//
//2 oscillators shifted//
//f is the fundamental, n the multiplier, deltaf the shift frequency to get a beat//
doubleoscillator(f, n, deltaf) = (f*n) <: (_, +(deltaf)) : (os.osci, os.osci) : + : *(0.5);
//
//--------------------------------------------------------------------------------------//
//DEFINITION OF AN ADDITIVE SYNTHESIS
//
//defined as a multiple oscillator with frequencies that are specific multiples of a fondamental
//with amplitude and beat setting
//--------------------------------------------------------------------------------------//
//
multiosc(n) = par(i, n, doubleoscillator(f0, fmult(i), fbeat(i)) : *(amp(i)) : *(gain));
//
//--------------------------------------------------------------------------------------//
// CONVERSION DB=>LINEAR
//--------------------------------------------------------------------------------------//
dbcontrol = _ <: ((_ > -127.0), ba.db2linear) : *;
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GAIN IN DB
//--------------------------------------------------------------------------------------//
dbtogain = si.smoo : dbcontrol;
//
//
process = multiosc(12);
