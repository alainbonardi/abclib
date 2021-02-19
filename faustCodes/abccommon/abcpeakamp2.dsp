//
import("stdfaust.lib");
//
//uses common file abcpeakamp.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//FOR PEAKAMP
//
//nsamp is the number of samples corresponding to the selected duration//
//
nsamp = int(hslider("v:peakamp/period [unit:msec]", 10, 1, 5000, 1) * millisec);
//number of samples for one millisecond of signal//
millisec = ma.SR / 1000.0;
