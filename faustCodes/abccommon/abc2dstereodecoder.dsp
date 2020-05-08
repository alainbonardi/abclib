//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS: POSITIONS OF THE LOUDSPEAKERS IN DEGREES (anticlockwise)
//--------------------------------------------------------------------------------------//
gain = hslider("v:stereodecoder/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
direct = 2 * checkbox("v:stereodecoder/directangles") - 1; 
//--------------------------------------------------------------------------------------//
// GAIN LINES IN PARALLEL
//--------------------------------------------------------------------------------------//
gainLine(n) = par(i, n, *(gain));
//--------------------------------------------------------------------------------------//
//A VECTOR OF GAINS ON THE OUTPUT
//--------------------------------------------------------------------------------------//
leftDispatcher = _<:(*(1-direct), *(direct));
rightDispatcher = _<:(*(direct), *(1-direct));
//--------------------------------------------------------------------------------------//
//AMBISONIC DECODING IN STEREO WITH IRREGULAR ORDER
//-------------------------------------------------------------------
mystereodecoder(n)	= ho.decoderStereo(n) : gainLine(2) : (leftDispatcher, rightDispatcher) :> (_, _);
//