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
trans(ind) = nentry("h:multiharmo/v:pitches/trans%2ind", 0, -2400, 2400, 0.001);
//
//gain in dB of the harmonizer #i
gain(ind) = nentry("h:multiharmo/v:gains/gain%2ind", 0, -127, 18, 0.001) : dbtogain;
//
//window size of the harmonizer #i
winsize(ind) = nentry("h:multiharmo/v:windows/winsize%2ind", 50, 0, 127, 0.001) : pdLineDrive4096;
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
