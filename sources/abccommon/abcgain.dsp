//COMMON SOFTWARE FOR ALL ABCGAIN MODULES//
import("../abccommon/abcsmoothline.dsp");
import("../abccommon/abcdbcontrol.dsp");

//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GAIN IN DB
//--------------------------------------------------------------------------------------//
gain = hslider("gain [unit:dB]", 0, -127, 18, 0.01) : smoothLine : dbcontrol;

//--------------------------------------------------------------------------------------//
//A VECTOR OF GAINS ON THE OUTPUT
//--------------------------------------------------------------------------------------//
gainLine = par(i, nl, *(gain));