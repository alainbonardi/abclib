//
import("stdfaust.lib");
//
//uses abcdoublelay.dsp and abcdbcontrol.dsp
//
//THESE PARALLEL DELAY LINES WORK WITH MUSICAL DURATIONS AND A TEMPO
//TO EXPRESS THE DURATIONS OF DELAYS AS THE DURATION OF NOTES
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
updatefreq = hslider("h:multidelays/v:general/updatefreq [unit:Hz]", 30, 0.0001, 1000, 0.0001);
fdbk(ind) = hslider("h:multidelays/v:fdbks/fdbk%2ind", 0, 0, 0.99999, 0.0001) : si.smoo;
//
tempo = nentry("h:multidelays/v:general/tempo [unit:bpm]", 60, 1, 600, 0.01);
//--------------------------------------------------------------------------------------//
//Maximum number of samples if a common delay line
//corresponding to a bit more than 21,8 seconds at 48 KHz
Ndelsamp = 1048576;
//--------------------------------------------------------------------------------------//
dur(ind)=((hslider("h:multidelays/v:durations/dur%2ind [unit:musicaldur]", 1, 0, 32, 0.0001) * 60 / tempo * ma.SR), Ndelsamp) : min ;
gain(ind) = hslider("h:multidelays/v:dynamics/gain%2ind [unit:dB]", 0, -127, 18, 0.001) : dbtogain;
//--------------------------------------------------------------------------------------//
//DEFINITION OF A DOUBLE DELAY LINE FOR PARALLEL IMPLEMENTATION
//--------------------------------------------------------------------------------------//
delpar(ind) = fdOverlappedDoubleDelay(dur(ind), Ndelsamp, updatefreq, fdbk(ind));
//
delparset(n) = par(i, n, (delpar(i) : *(gain(i))));
//
//


