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
declare name "abc_rev4stereo";
//
//--------------------------------------------------------------------------------------//
//REV4 REVERB WITH 2 OR 4 OUTPUTS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//uses abclines.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//2 controls: revDur which is the duration of the reverb (127 is infinite)
//revAmp is the amplitude of the output sound of the reverb
revDur = hslider("v:rev4/revDur [unit:midiscale]", 120, 0, 127, 1) : /(254.) : si.smoo;
revGain = hslider("v:rev4/revGain [unit:midiscale]", 100, 0, 127, 1) : basicLineDrive;
//
//--------------------------------------------------------------------------------------//
//IMPLEMENTATION OF THE REV4
//--------------------------------------------------------------------------------------//
millisec = ma.SR / 1000.0;
tap(del) = de.delay(65536, int(del * millisec));
initBlock(del) = _ <: (_, tap(del)) <: (+, -);
plusMinusBlock(del) = (_, tap(del)) <: (+, -);
cascadBlock = initBlock(75.254601) : plusMinusBlock(43.533688) : plusMinusBlock(25.796) : plusMinusBlock(19.391993) : plusMinusBlock(16.363997) : (_, tap(13.645));
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));
doubler4to8 = ((_<:(_, _)), (_<:(_, _)), (_<:(_, _)), (_<:(_, _)));
//
p(a, b, c, d, e, f, g, h) = (e, a, g, c, f, b, h, d);
reinjBlock1 = (*(revDur), *(revDur), *(revDur), *(revDur), _, _) : (_, _, inputSort(2)) : (_, _, +, +);
reinjBlock2quadri = (((_, _) <: (_, _, (-:*(-1)), +)), ((_, _) <:((-:*(-1)), +, _, _))) : (_, _, doubler4to8, _, _) : (_, _, p, _, _) : (*(revGain), *(revGain), -, -, +, +, *(revGain), *(revGain));
reinjBlock2stereo = (((_, _) <: ((-:*(-1)), +)), ((_, _) <:((-:*(-1)), +, _, _))) : (doubler4to8, _, _) : (p, _, _) : (-, -, +, +, *(revGain), *(revGain));
reinjBlock3 = (tap(58.643494), tap(69.432503), tap(74.523392), tap(86.12439));
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
process = cascadBlock : (reinjBlock1 : reinjBlock2stereo) ~ (reinjBlock3, !, !) : (!, !, !, !, _, _);
