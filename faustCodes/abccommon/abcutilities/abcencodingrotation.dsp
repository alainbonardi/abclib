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