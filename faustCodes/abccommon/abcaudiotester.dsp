//
//--------------------------------------------------------------------------------------//
//AUDIOTESTER
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//uses abcdbcontrol.dsp
//
nmax = 16;
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
n = hslider("v:audiotester/n", 2, 1, nmax, 1); //number of loudspeakers used (from 1 to 16)
freq = hslider("v:audiotester/freq", 1, 0.01, 100, 0.01);//frequency of the envelopes
gain = hslider("v:audiotester/gain [unit:dB]", -20, -127, 18, 0.01) : dbtogain;
//
dur = 1000 / freq; //duration in milliseconds between two envelopes//
globalfreq = freq / n;//global frequency of the whole cycle of loudspeakers
//
//--------------------------------------------------------------------------------------//
//FUNCTIONS TO BE USED
//--------------------------------------------------------------------------------------//
//
//an impulsion at the frequency freq
//
impulse = ba.pulse(int(dur * ma.SR / 1000));
//
//a counter from 0 to n-1
//
counter = (_, (os.phasor(n, globalfreq) : int)) : ba.sAndH;
//
//a pink noise generator with an ar envelope
//
generator = (((0.005, (dur * 0.5 / 1000), _) : en.ar), no.pink_noise) : * : *(gain);
//
//a selector to choose one output #x
//
selector(x) = _ <: par(i, nmax, *(x == i));
//
//--------------------------------------------------------------------------------------//
//THE AUDIOTESTER
//--------------------------------------------------------------------------------------//
//
audiotester = impulse <: (counter, generator) : selector;
//
//