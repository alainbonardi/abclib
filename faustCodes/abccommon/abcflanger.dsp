//
import("stdfaust.lib");
//
//does not use any common .dsp file
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
rate = vslider("h:flanger/rate", 0.5, 0.01, 100, 0.001);
depth = vslider("h:flanger/depth", 40, 0, 1000, 0.001);
offset = vslider("h:flanger/offset", 10, 0, 200, 0.001);
//
nsamp = 262144; //maximum capacity of the delay line
//
//Variable delay//
variableDelay = os.osccos(rate) : +(1) : *(depth) : +(offset);
variableSampNumber = variableDelay * ma.SR / 1000;
myFlanger = _ <: (de.fdelay(nsamp, variableSampNumber), _) : +; //mixes the original signal and the delayed one//
