//
//--------------------------------------------------------------------------------------//
//AMBISONIC ENCODERS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//uses abcdbcontrol.dsp and abcencodingrotation.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
rotfreq = hslider("v:encoder/speed [unit:s-1]", 0, -100, 100, 0.001);
rotphase = hslider("v:encoder/angle [unit:deg]", 0, -360, 360, 0.01) / 360;
returntime = hslider("v:encoder/returntime [unit:msec]", 20, 0, 1000, 1) * 0.001;
//
//--------------------------------------------------------------------------------------//
//SELECTING AN ENCODER FROM HO FAUST LIBRARY
//--------------------------------------------------------------------------------------//
myEncoder(sig, angle) = ho.encoder(ao, sig, angle);//at ambisonic order ao.             //
//
//--------------------------------------------------------------------------------------//
//SENDING THE PHASED ANGLE FUNCTION TO THE ENCODER
//--------------------------------------------------------------------------------------//
freqPhaseEncoder(f, p, dt) = (_, rotationOrStaticAngle(f, p, dt)) : myEncoder;
//