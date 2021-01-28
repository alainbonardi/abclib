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
declare name "abc_harmo13";
//
import("stdfaust.lib");
//
//array of harmonizers
//
//uses abcsinenv.dsp, abcdbcontrol.dsp, and abclines.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//amount of transposition (in midicents) of the harmonizer #i
trans(ind) = hslider("h:multiharmo/v:transpositions/trans%2ind [unit:midicents]", 0, -2400, 2400, 0.01);
//
//gain in dB of the harmonizer #i
gain(ind) = hslider("h:multiharmo/v:gains/gain%2ind [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//
//window size of the harmonizer #i
winsize(ind) = hslider("h:multiharmo/v:windowsizes/winsize%2ind", 50, 0, 127, 0.01) : pdLineDrive4096;
//
//--------------------------------------------------------------------------------------//
//A PHASOR THAT ACCEPTS BOTH NEGATIVE AND POSITIVE FREQUENCES
//--------------------------------------------------------------------------------------//
pdPhasor(f) = os.phasor(1, f);
//
//--------------------------------------------------------------------------------------//
//DEFINITION OF AN ELEMENTARY TRANSPOSITION BLOCK
//--------------------------------------------------------------------------------------//
transpoBlock(moduleOffset, midicents, win, gainlitude) = dopplerDelay
			with {
					freq = midicents : +(6000) : *(0.01) : ba.midikey2hz : -(261.625977) : *(-3.8224) /(float(win));
					//shifted phasor//
					adjustedPhasor = freq : pdPhasor : +(moduleOffset) : ma.decimal;
					//threshold to input new control values//
					th_trigger = (adjustedPhasor > 0.001) * (adjustedPhasor@1 <= 0.001);
					trig_win = win : ba.sAndH(th_trigger);
					delayInSgainles = adjustedPhasor : *(trig_win) : *(ma.SR) : /(1000.);
					variableDelay = de.fdelay(262144, delayInSgainles);
					cosinusEnvelop = adjustedPhasor : *(0.5) : sinusEnvelop;
					dopplerDelay = (variableDelay, cosinusEnvelop) : * : *(gainlitude);
				};
//
//--------------------------------------------------------------------------------------//
//DEFINITION OF AN ELEMENTARY HARMONIZER AS TWO TRANSPOSITION BLOCKS OVERLAPPED
//--------------------------------------------------------------------------------------//
harmonizer(midicents, win, gainlitude) = _ <: (transpoBlock(0, midicents, win, gainlitude), transpoBlock(0.5, midicents, win, gainlitude)) : +;
//
blockOfHarmonizers(n) = par(ind, n, harmonizer(trans(ind), winsize(ind), gain(ind))); 
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
//--------------------------------------------------------------------------------------//
// SINUS ENVELOPE
//--------------------------------------------------------------------------------------//
//
tablesize = 1 << 16;
sinustable = os.sinwaveform(tablesize);
//
sinusEnvelop(phase) = s1 + d * (s2 - s1)
	with {
			zeroToOnePhase = phase : ma.decimal;
			myIndex = zeroToOnePhase * float(tablesize);
			i1 = int(myIndex);
			d = ma.decimal(myIndex);
			i2 = (i1+1) % int(tablesize);
			s1 = rdtable(tablesize, sinustable, i1);
			s2 = rdtable(tablesize, sinustable, i2);
};
//
//--------------------------------------------------------------------------------------//
// CONVERSION DB=>LINEAR
//--------------------------------------------------------------------------------------//
dbcontrol = _ <: ((_ > -127.0), ba.db2linear) : *;
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETER: GAIN IN DB
//--------------------------------------------------------------------------------------//
dbtogain = si.smoo : dbcontrol;
//
//
process = blockOfHarmonizers(13);
