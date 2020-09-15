//
//A frequency shifter with only one positive output
//but the shifting frequency can have positive or negative values
//
import("stdfaust.lib");
//
//uses abcsinenv.dsp, abcfreqshift.dsp, abcdbcontrol.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//Shifting frequencies
fr(ind) = hslider("h:multifreqshifts/v:shiftingfreqs/fr%2ind [unit:Hz]", 0, -10000, 10000, 0.001);
//Gains in dB
gain(ind) = hslider("h:multifreqshifts/v:dynamics/gain%2ind [unit:dB]", 0, -127, 18, 0.001) : dbtogain;
//
multifreqshift(n) = par(i, n, (fshiftp(fr(i)) : *(gain(i))));
//
