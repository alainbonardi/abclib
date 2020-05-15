//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//for the soundcoat synthetizer 
f0 = nentry("v:synthetizers/f0 [unit:Hz]", 100, 20, 10000, 0.01);
filterQ = 500;
filterG = 1;
randwin= nentry("v:synthetizers/randwin [unit:msec]", 4800, 1, 20000, 1);
randfreq = 1000. / randwin;
//
//for all synthetizers
gain = hslider("v:synthetizers/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//--------------------------------------------------------------------------------------//
//
//two inputs for elemFilter: left is the signal to filter, right is a random noise (from a decorrelated vector of noise)
elemFilter(fund, f, i, n) = (_, _) : (_, randVol) : (fi.resonbp(fund * i, filterQ, filterG), _) : *
	with {	
			ramp = os.phasor(1, f) : +(i/n) : ma.decimal;		
			th = (ramp > 0.001) * (ramp@1 <= 0.001);
			randVol = ba.sAndH(th) : *(127) : basicLineDrive : si.smoo; //requires the basicLineDrive definition in abclines.dsp
};

//--------------------------------------------------------------------------------------//
//INPUT DISPATCHING
//--------------------------------------------------------------------------------------//
//starting with 2n values sigA1, sigA2, ... sigAn, sigB1, sigB2, ... sigBn
//the result is the vector sigA1, sigB1, sigA2, sigB2, ..., sigAn, sigBn
//--------------------------------------------------------------------------------------//
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));

soundcoat(n, fund, f) = no.multinoise(n+1) : ((_ <: si.bus(n)), si.bus(n)) : inputSort(n) : par(i, n, elemFilter(fund, f, i+1, n)) :> _ : *(0.01); 

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

process = soundcoat(16, f0, randfreq);