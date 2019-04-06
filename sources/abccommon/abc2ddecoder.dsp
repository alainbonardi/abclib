//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//

//COMMON FAUST CODE FOR 2D DECODERS//

import("../abccommon/abcgain.dsp");

//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS: POSITIONS OF THE LOUDSPEAKERS IN DEGREES (anticlockwise)
//--------------------------------------------------------------------------------------//
direct = 2 * checkbox("h:decoder/v:global/directangles") - 1; 
offset = hslider("h:decoder/v:global/angularoffset [unit:deg]", 0, -180, 180, 1) * ma.PI / 180;
a(ind) = (hslider("h:decoder/v:angles/a%ind [unit:deg]", ind * 45, -360, 360, 1) * ma.PI / 180. - direct * offset) : *(direct) : smoothLine;

//--------------------------------------------------------------------------------------//
//AMBISONIC DECODING WITH IRREGULAR ORDER
//-------------------------------------------------------------------
mydecoder(n, p)	= par(i, 2*n+1, _) <: par(i, p, speaker(n, a(i)))
with 
{
   speaker(n,alpha)	= /(2), par(i, 2*n, _), ho.encoder(n,2/(2*n+1),alpha) : si.dot(2*n+1);
};
