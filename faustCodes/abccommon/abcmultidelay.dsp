//
import("stdfaust.lib");
//
//uses abcdoublelay.dsp and abcdbcontrol.dsp
//
//THESE DELAY LINES WORK WITH MUSICAL DURATIONS AND A TEMPO
//TO EXPRESS THE DURATIONS OF DELAYS LIKE THE DURATION OF NOTES
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
updatefreq = vslider("h:multidelays/v:general/updatefreq", 30, 0.0001, 1000, 0.0001);
fdbk(ind) = hslider("h:multidelays/v:feedbacks/fdbk%2ind", 0, 0, 0.99999, 0.0001) : si.smoo;
//
tempo = nentry("h:multidelays/v:general/tempo", 60, 1, 600, 0.01);
//
//Maximum number of samples if a common delay line
//corresponding to a bit more than 21,8 seconds at 48 KHz
Ndelsamp = 1048576;
//
dur(ind)=((nentry("h:multidelays/v:rythm/dur%2ind", 1, 0, 32, 0.0001) * 60 / tempo * ma.SR), Ndelsamp) : min ;
gain(ind) = nentry("h:multidelays/v:dynamics/gain%2ind", 0, -127, 18, 0.001) : dbtogain;
//
//DEFINITION OF A DOUBLE DELAY LINE FOR PARALLEL IMPLEMENTATION
//
delpar(ind) = fdOverlappedDoubleDelay(dur(ind), Ndelsamp, updatefreq, fdbk(ind));
//
//DEFINITION OF A DOUBLE DELAY LINE FOR SEQUENTIAL IMPLEMENTATION
//
delseq(ind) = overlappedDoubleDelay(dur(ind), Ndelsamp, updatefreq);
//
//--------------------------------------------------------------------------------------//
//RECURSIVE DEFINITION OF A DELAY CHAIN WITH DELSEQ ELEMENTARY DELAYS
//--------------------------------------------------------------------------------------//
delaychain(1) = delseq(1);
delaychain(2) = delseq(1) <: (delseq(2), _);
delaychain(n) = delaychain(n-1) : ((_ <: (delseq(n), _)), si.bus(n-2));
//
delparset(n) = par(i, n, (delpar(i) : *(gain(i))));
delseqset(n) = delseq(0) <: (delaychain(n), _) : par(i, (n+1), *(gain(n-i)));


