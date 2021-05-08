//
import("stdfaust.lib");
//
//uses abcdoublelay.dsp and abcdbcontrol.dsp
//
//THESE SEQUENTIAL DELAY LINES (CHAIN DELAYS) WORK WITH MUSICAL DURATIONS AND A TEMPO
//TO EXPRESS THE DURATIONS OF DELAYS AS THE DURATION OF NOTES
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
updatefreq = hslider("h:chaindelays/v:general/updatefreq [unit:Hz]", 30, 0.0001, 1000, 0.0001);
fdbk = hslider("h:chaindelays/v:general/fdbk", 0, 0, 0.99999, 0.0001) : si.smoo;
//
tempo = nentry("h:chaindelays/v:general/tempo [unit:bpm]", 60, 1, 600, 0.01);
//--------------------------------------------------------------------------------------//
//Maximum number of samples if a common delay line
//corresponding to a bit more than 21,8 seconds at 48 KHz
Ndelsamp = 1048576;
//--------------------------------------------------------------------------------------//
dur(ind)=((hslider("h:multidelays/v:durations/dur%2ind [unit:musicaldur]", 1, 0, 32, 0.0001) * 60 / tempo * ma.SR), Ndelsamp) : min ;
gain(ind) = hslider("h:multidelays/v:dynamics/gain%2ind [unit:dB]", 0, -127, 18, 0.001) : dbtogain;
//--------------------------------------------------------------------------------------//
//DEFINITION OF A DOUBLE DELAY LINE FOR SEQUENTIAL IMPLEMENTATION
//--------------------------------------------------------------------------------------//
delseq(ind) = overlappedDoubleDelay(dur(ind-1), Ndelsamp, updatefreq);
//
//--------------------------------------------------------------------------------------//
//BUS INVERSION FOR A BUS OF N SIGNALS (1st input => N, 2nd => N-1, 3rd => N-2, etc)
//--------------------------------------------------------------------------------------//
invBus(N) = par(j, N, _ <: par(i, N, *(i==N-j-1))) :> si.bus(N);
//
//--------------------------------------------------------------------------------------//
//RECURSIVE DEFINITION OF A DELAY CHAIN WITH DELSEQ ELEMENTARY DELAYS
//--------------------------------------------------------------------------------------//
delaychain(1) = delseq(1);
delaychain(2) = delseq(1) <: (delseq(2), _);
delaychain(n) = delaychain(n-1) : ((_ <: (delseq(n), _)), si.bus(n-2));
//
delseqset(n) = (+ <: (delaychain(n), _) : (_, par(i, n, *(gain(n-i-1))))) ~ (*(fdbk)) : (!, invBus(n));
//
//


