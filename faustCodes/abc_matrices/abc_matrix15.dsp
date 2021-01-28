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
declare name "abc_matrix15";
//
import("stdfaust.lib");
//
//uses abclines.dsp file
//
//--------------------------------------------------------------------------------------//
// CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
ramp = nentry("h:matrix/ramp [unit:msec]", 100, 0, 100000, 1); //transition ramp duration in msec//
//
//--------------------------------------------------------------------------------------//
//GENERAL MATRIX//
//--------------------------------------------------------------------------------------//
//matrix of N x M toggles//
//
toggle(c, in) = (nentry("h:matrix/v:Col%2c/m%3in", 0, -1, 1, 0.001), ramp) : line  ;
mixer(N,out) 	= par(in, N, *(toggle(in, in+out*N)) ) :> _ ;
matrix(N,M) 	= par(in, N, _) <: par(out, M, mixer(N, out));
//
//
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
//
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
//
process = matrix(15, 15);
