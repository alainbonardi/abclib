//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//----------------------------- BY ALAIN BONARDI - 2019-2021 ---------------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi";
declare licence "LGPLv3";
declare name "abc_2d_rotate5";
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
//--------------------------------------------------------------------------------------//
//STATIC OR ROTATION PHASE BETWEEN 0 AND 1
//--------------------------------------------------------------------------------------//
rotationOrStaticPhase(f, p, dt) = (1-vn) * x + vn * p
with {
		vn = (f == 0) : si.smooth(ba.tau2pole(dt));
		//to manage the case where frequency is zero, smoothly switches from one mode to another//
		x = (os.phasor(1, f), p, 1) : (+, _) : fmod;
};
//
//--------------------------------------------------------------------------------------//
//PHASE TO RADIAN ANGLE CONVERSION
//--------------------------------------------------------------------------------------//
rotationOrStaticAngle(f, p, dt) = rotationOrStaticPhase(f, p, dt) * 2 * ma.PI;
//
ao = 5;//ambisonic order//
process = freqPhaseRotate(rotfreq, rotphase, returntime);
