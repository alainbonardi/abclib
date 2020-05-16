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
declare name "abc_substractsynth14";
//
import("stdfaust.lib");
//
//uses abcdbcontrol.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//fundamental frequency//
f0 = nentry("v:substractsynth/f0 [unit:Hz]", 220, 0.01, 15000, 0.01);
//
gain = hslider("v:substractsynth/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//
filterQ = hslider("v:substractsynth/filterQ", 50, 1, 500, 1);
//
filterG = hslider("v:substractsynth/filterG", 0.8, 0, 1, 0.01);
//
amp(ind) = hslider("v:substractsynth/h:partials/v:amps/amp%2ind", (ba.linear2db(1/(ind+1))), -127, 18, 0.01) : dbtogain;
//
//frequency multipliers (harmonic by default :f, 2*f, 3*f, etc.))//
fmult(ind) = nentry("v:substractsynth/h:partials/v:fmults/fmult%2ind", (ind+1), 0, 1000, 0.00001);
//
//--------------------------------------------------------------------------------------//
//DEFINITION OF A SUBSTRACTIVE SYNTHESIS
//
//defined as a multiple oscillator with frequencies that are specific multiples of a fondamental
//with amplitude and beat setting
//--------------------------------------------------------------------------------------//
multisubstractsynth(n) = no.noise <: par(i, n, fi.resonbp(f0 * fmult(i), filterQ, filterG) : *(amp(i)) : *(gain)) ;
//
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
process = multisubstractsynth(14);
