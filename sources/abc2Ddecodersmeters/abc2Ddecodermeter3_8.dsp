//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//

declare name "abc2Ddecodermeter3_8";
declare author "Alain Bonardi";
declare licence "GPLv3";

import("stdfaust.lib");

//--------------------------------------------------------------------------------------//
//HOA DECODER+METER AT ORDER AO TO NL LOUDSPEAKERS//
//--------------------------------------------------------------------------------------//

//--------------------------------------------------------------------------------------//
//AMBISONIC ORDER AND NUMBER OF LOUDSPEAKERS
//--------------------------------------------------------------------------------------//
ao = 3;
nl = 8;
//--------------------------------------------------------------------------------------//
//DEFINITION OF A SMOOTHING FUNCTION FOR CONTROLLERS
//--------------------------------------------------------------------------------------//
smoothLine = si.smooth(ba.tau2pole(0.1));

//--------------------------------------------------------------------------------------//
// CONVERSION DB=>LINEAR
//--------------------------------------------------------------------------------------//
dbcontrol = _ <: ((_ > -127.0), ba.db2linear) : *;

//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS: POSITIONS OF THE LOUDSPEAKERS IN DEGREES (anticlockwise)
//--------------------------------------------------------------------------------------//
direct = 2 * checkbox("h:decoder/v:global/directangles") - 1; 
offset = hslider("h:decoder/v:global/angularoffset [unit:deg]", 0, -180, 180, 1) * ma.PI / 180;
a(ind) = (hslider("h:decoder/v:angles/a%ind [unit:deg]", ind * 45, -360, 360, 1) * ma.PI / 180 * direct - offset);
gain = hslider("h:decoder/v:global/gain [unit:dB]", 0, -127, 18, 0.01) : smoothLine : dbcontrol;
refresh = hslider("h:decoder/v:global/refresh", 100, 10, 1000, 1) * 0.001;//refresh time, default is 100 msec = 0.1 sec

//--------------------------------------------------------------------------------------//
//A VECTOR OF GAINS ON THE OUTPUT
//--------------------------------------------------------------------------------------//
gainLine = par(i, nl, *(gain));

//--------------------------------------------------------------------------------------//
//ANGLE SWEEPING PERIODICALLY 0 TO 2*PI INTERVAL
//--------------------------------------------------------------------------------------//
theta = os.phasor(1, 1/refresh) * 2 * ma.PI;

//--------------------------------------------------------------------------------------//
//ODD EVEN DISPATCHING
//--------------------------------------------------------------------------------------//
//
//starting with 2n values sigA1, sigA2, sigA3 ... sigA2n
//the result is the vector sigA1, sigA3, ... sigA2n-1, sigA2, sigA2
//--------------------------------------------------------------------------------------//
oddevensort(n) = si.bus(2*n) <: (par(i, n, ((ba.selector(2*i, 2*n)))), par(i, n, (ba.selector(2*i+1, 2*n))));

//--------------------------------------------------------------------------------------//
//AMBISONIC DECODING WITH IRREGULAR ORDER
//--------------------------------------------------------------------------------------//
mydecoder(n, p)	= par(i, 2*n+1, _) <: par(i, p, speaker(n, a(i)))
with 
{
   speaker(n,alpha)	= /(2), par(i, 2*n, _), ho.encoder(n,2/(2*n+1),alpha) : si.dot(2*n+1);
};

//--------------------------------------------------------------------------------------//
//CONVERTS THE SIGNAL INTO DB AND THEN RADIUS FOR THE ITH LOUDSPEAKER
//--------------------------------------------------------------------------------------//
delta = 5 * ma.PI / 180; //angle tolerance//
dBLevelNormalized = ((((_ : ba.linear2db), -72) : min), 8 : max) : +(72) : /(80);
anglecloseto(alpha, i) = (alpha > a(i) - delta) * (alpha < a(i) + delta);
convertsToRadius(alpha, i) = dBLevelNormalized : *(anglecloseto(alpha, i)) : *(-1) : +(1);

//--------------------------------------------------------------------------------------//
//DECODING
//--------------------------------------------------------------------------------------//
thisdecoder = mydecoder(ao, nl) : gainLine;
radiusconverter = par(i, nl, convertsToRadius(theta, i));
process = thisdecoder : par(i, nl, _ <:(_, _)) : oddevensort(nl) : (si.bus(nl), radiusconverter);
//process = convertsToRadius(theta, 0);
//process = dBLevelNormalized;