//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//


//------------------------------------ABC UTILITIES-------------------------------------//


//--------------------------------------------------------------------------------------//
//CARTESIAN TO POLAR CONVERSION
//angles in radians
//--------------------------------------------------------------------------------------//
cartesian2polar = p <: (module, atan2) with {
	p(a, b) = (b, a); //permutation for atan2//
	square = _ <: *;
	module = (square, square) : + : sqrt;
};

//--------------------------------------------------------------------------------------//
//POLAR TO CARTESIAN CONVERSION
//angles in radians
//--------------------------------------------------------------------------------------//
polar2cartesian = (_, _) <: (_, cos, _, sin) : (*, *);

//--------------------------------------------------------------------------------------//
//DEFINITION OF A SMOOTHING FUNCTION FOR CONTROLLERS
//--------------------------------------------------------------------------------------//
smoothLine = si.smooth(ba.tau2pole(0.1));

//-------------------------------------------------------------------------
// Implementation of Max/MSP line~. Generate signal ramp or envelope 
// 
// USAGE : line(value, time)
// 	value : the desired output value
//	time  : the interpolation time to reach this value (in milliseconds)
//
// NOTE : the interpolation process is restarted every time the desired
// output value changes. The interpolation time is sampled only then.
//
// comes from the maxmsp.lib - no longer standard library
//
//-------------------------------------------------------------------------
line (value, time) = state~(_,_):!,_ 
	with {
		state (t, c) = nt, ba.if (nt <= 0, value, c+(value - c) / nt)
		with {
			nt = ba.if( value != value', samples, t-1);
			samples = time*ma.SR/1000.0;
		};
	};

//--------------------------------------------------------------------------------------//
//DEFINITION OF A PUREDATA LIKE LINEDRIVE OBJECT
//--------------------------------------------------------------------------------------//
pdLineDrive(vol, ti, r, f, b, t) = transitionLineDrive
	with {
			//vol = current volume in Midi (0-127)
			//ti = current time of evolution (in msec)
			//r is the range, usually Midi range (127)
			//f is the factor, usually 2
			//b is the basis, usually 1.07177
			//t is the ramp time usually 30 ms

			pre_val = ba.if (vol < r, vol, r);
			val = ba.if (pre_val < 1, 0, f*pow(b, (pre_val - r)));
			pre_ti = ba.if (ti < 1.46, t, ti);
			transitionLineDrive = line(val, pre_ti);
		};
basicLineDrive = (_, 30, 127, 1, 1.06, 30) : pdLineDrive;
pdLineDrive4096 = (_, 30, 127, 4096, 1.07177, 30) : pdLineDrive;


//--------------------------------------------------------------------------------------//
// CONVERSION DB=>LINEAR
//--------------------------------------------------------------------------------------//
dbcontrol = _ <: ((_ > -127.0), ba.db2linear) : *;

//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GAIN IN DB
//--------------------------------------------------------------------------------------//
dbtogain = smoothLine : dbcontrol;

//--------------------------------------------------------------------------------------//
//STATIC OR ROTATION PHASE BETWEEN 0 AND 1
//--------------------------------------------------------------------------------------//
rotationOrStaticPhase(f, p, dt) = (1-vn) * x + vn * p
with {
		vn = (f == 0) : si.smooth(ba.tau2pole(dt));
		//to manage the case where frequency is zero, smoothly switches from one mode to another//
		x = (os.phasor(1, f), p, 1) : (+, _) : fmod;
};

//--------------------------------------------------------------------------------------//
//PHASE TO RADIAN ANGLE CONVERSION
//--------------------------------------------------------------------------------------//
rotationOrStaticAngle(f, p, dt) = rotationOrStaticPhase(f, p, dt) * 2 * ma.PI;
