//
import("stdfaust.lib");
//
//uses abcsinenv.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
rate = vslider("h:flanger/rate", 0.5, 0.01, 500, 0.001) : si.smoo;
depth = vslider("h:flanger/depth", 40, 0, 1000, 0.001) : si.smoo;
offset = vslider("h:flanger/offset", 10, 0, 200, 0.001) : si.smoo;
fdbk = vslider("h:flanger/fdbk", 1, 0, 1, 0.001) : si.smoo;
spread = vslider("h:flanger/spread", 0, 0, 1, 0.001) : si.smoo;
//
nsamp = 262144; //maximum capacity of the delay line
//
//Variable delay//
variableDelaySampNumber(i, n, r, d, off, s) = os.phasor(1, r) : + (i * s / n) : ma.decimal : sinusEnvelop : +(1) : *(d) : +(off) : /(1000.) : *(ma.SR);
flanger(i, n, r, d, off, f, s) = _ <: (de.fdelay(nsamp, variableDelaySampNumber(i, n, r, d, off, s)), _) : (*(f), _) : +; //mixes the original signal and the delayed one//
myFlanger(n, r, d, off, f, s) = _ <: par(i, n, flanger(i, n, r, d, off, f, s));
//