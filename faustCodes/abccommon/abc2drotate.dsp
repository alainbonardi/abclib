//
//--------------------------------------------------------------------------------------//
//AMBISONIC SOUND FIELD ROTATION
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//uses abcencodingrotation.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
rotfreq = hslider("v:rotate/speed [unit:s-1]", 0, -100, 100, 0.001);
rotphase = hslider("v:rotate/angle [unit:deg]", 0, -360, 360, 0.01) / 360;
returntime = hslider("v:rotate/returntime [unit:msec]", 20, 0, 1000, 1) * 0.001;
//
//--------------------------------------------------------------------------------------//
//SELECTING AN ENCODER FROM HO FAUST LIBRARY
//--------------------------------------------------------------------------------------//
myRotate(angle) = rotate(ao, angle);//at ambisonic order ao.             //
//
//--------------------------------------------------------------------------------------//
//SENDING THE PHASED ANGLE FUNCTION TO THE ENCODER
//--------------------------------------------------------------------------------------//
freqPhaseRotate(f, p, dt) = myRotate(rotationOrStaticAngle(f, p, dt));
//
//--------------------------------------------------------------------------------------//
//A ROTATE WITH A BUG CORRECTION (gain3 had a sign error)
//--------------------------------------------------------------------------------------//
//
rotate(n, a) = par(i, 2*n+1, _) <: par(i, 2*n+1, rotation(i, a))
with
{
	rotation(i, a) = (par(j, 2*n+1, gain1(i, j, a)), par(j, 2*n+1, gain2(i, j, a)), par(j, 2*n+1, gain3(i, j, a)) :> _)
	with
	{	
		indexabs = (int)((i-1)  / 2 + 1);
		gain1(i, j, a) = _ * cos(a * indexabs) * (j == i);
		gain2(i, j, a) = _ * sin(a * indexabs) * (j-1 == i) * (j != 0) * (i%2 == 1);
		gain3(i, j, a) = (_ * sin(a * indexabs)) * (j+1 == i) * (j != 0) * (i%2 == 0) *(-1);
	};
};
//