//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//-----------------------BY ALAIN BONARDI & PAUL GOUTMANN - 2019-2021 ------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi & Paul Goutmann";
declare licence "LGPLv3";
declare name "abc_sounddetector";
//
import("stdfaust.lib");
//
//uses abcpeakamp.dsp common file
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS FOR THE SOUND DETECTOR
//--------------------------------------------------------------------------------------//
//
offset = nentry("v:Detector/h:calibration_dB/offset [unit:dB]", 10, -64, 64, 1) : si.smoo;
noiseFloor = nentry("v:Detector/h:calibration_dB/noiseFloor [unit:dB]", -50, -120, 0, 1) : si.smoo;
noteOn = nentry("v:Detector/h:calibration_dB/noteOn [unit:dB]", -60, -120, 0, 1) : si.smoo;
attack = nentry("v:Detector/h:soundFollow/attack", 0, 0, 1, 1);
tSlice = nentry("v:Detector/h:soundFollow/tSlice", 10, 1, 100, 1);
noteDur = nentry("v:Detector/h:noteOnOff/noteDur [unit:msec]", 50, 1, 500, 1) : si.smoo;
offDur = nentry("v:Detector/h:noteOnOff/offDur [unit:msec]", 25, 1, 500, 1) : si.smoo;

impulse = _ <: _, mem : - : (_ > 0.0);
release(n) = + ~ (_ <: _, (_ > 0) / n : -);
trigger(n) = impulse : release(n) : _ > 0;
oneToZero(n) = impulse : release(n) : min(1) : max(0);

impulseDec = _ <: _, mem : - : (_ < 0.0);
triggerDec(n) = impulseDec : release(n) : _ > 0;
oneToZeroDec(n) = impulseDec : release(n) : min(1) : max(0);

millisec = ma.SR / 1000.0;

//--------------------------------------------------------------------------------------//
//DEFINITION OF A SOUND DETECTOR//
//--------------------------------------------------------------------------------------//
soundDetector(measureDur, ofs, nf, thresh, noteDur, offDur, attTy, x) = (noteOnPhase + noteOffPhase) > 0
	with {
			
			nsamp = int(measureDur*millisec);
			nsampNoteOn = int(noteDur*millisec);
			nsampOff = int(offDur*millisec);
			measuredLevel = x : peakamp(nsamp) : ba.linear2db : +(ofs) : min(0) : max(nf) : /(nf) : *(-120);
			previousMeasuredLevel = measuredLevel@(nsamp);
			ascendingInput = measuredLevel >= previousMeasuredLevel;
			//attack type = 0 or 1
			//0 = attack is detected as soon as the measured level is higher than thresh//
			//1 = attack is detected as soon as the measured level is higher than thresh and has finished growing//
			attackTrig = (measuredLevel > thresh) * ((1-attTy) + attTy * (ascendingInput == 0));
			releaseTrig = (measuredLevel <= thresh) * (ascendingInput == 0); //descending and going under thresh//
			noteOnPhase = max((attackTrig : trigger(nsampNoteOn)), attackTrig*(1 - releaseTrig)) ;
			noteOffPhase = releaseTrig : trigger(nsampOff);
};

//bootInitialization =  1 <: (_, trigger(10*SR)) : -; //to avoid init changing values//

thisSoundDetector(x) = soundDetector(tSlice, offset, noiseFloor, noteOn, noteDur, offDur, attack, x);

offBeforeUse = (_, abs) ~ (max) : (_, !) : (_ > 0);

thisCompleteSoundDetector = _ <:(offBeforeUse, thisSoundDetector) : * <: (_, oneToZero(delta), oneToZeroDec(delta))
	with {
			delta = 20 * millisec; //20 msec impulsion for attack or release//
	};


//--------------------------------------------------------------------------------------//
//DEFINITION OF PEAKAMP PROCESS
//--------------------------------------------------------------------------------------//
//
peakamp(n) = maxVal(n) : ba.sAndH(getPeak) with {
	maxVal(n) = (_, abs) ~ (max : *(1 - resetMax)) : (_, !);
	resetMax = ba.pulse(n)@1;
	getPeak = ba.pulse(n);
};

//
process = thisCompleteSoundDetector;
