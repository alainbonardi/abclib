//
import("stdfaust.lib");
//
//does not use any common .dsp file
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//

//FOR THE SOUND DETECTOR
offset = nentry("v:Detector/h:calibration_dB/offset", 10, -64, 64, 1) : si.smoo;
noiseFloor = nentry("v:Detector/h:calibration_dB/noiseFloor", -50, -120, 0, 1) : si.smoo;
noteOn = nentry("v:Detector/h:calibration_dB/noteOn", -60, -120, 0, 1) : smoothLine;
attack = nentry("v:Detector/h:soundFollow/attack", 0, 0, 1, 1);
tSlice = nentry("v:Detector/h:soundFollow/tSlice", 10, 1, 100, 1);
noteDur = nentry("v:Detector/h:noteOnOff/noteDur", 50, 1, 500, 1) : smoothLine;
offDur = nentry("v:Detector/h:noteOnOff/offDur", 25, 1, 500, 1) : smoothLine;

impulse = _ <: _, mem : - : (_ > 0.0);
release(n) = + ~ (_ <: _, (_ > 0) / n : -);
trigger(n) = impulse : release(n) : _ > 0;
oneToZero(n) = impulse : release(n) : min(1) : max(0);

impulseDec = _ <: _, mem : - : (_ < 0.0);
triggerDec(n) = impulseDec : release(n) : _ > 0;
oneToZeroDec(n) = impulseDec : release(n) : min(1) : max(0);

//--------------------------------------------------------------------------------------//
//DEFINITION OF A SOUND DETECTOR//
//--------------------------------------------------------------------------------------//
soundDetector(measureDur, ofs, nf, thresh, noteDur, offDur, attTy, x) = (noteOnPhase + noteOffPhase) > 0
	with {
			nsamp = int(measureDur*millisec);
			nsampNoteOn = int(noteDur*millisec);
			nsampOff = int(offDur*millisec);
			measuredLevel = x : peakamp(nsamp) : linear2db : +(ofs) : min(0) : max(nf) : /(nf) : *(-120);
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

process = _ <:(offBeforeUse, thisSoundDetector) : * <: (_, oneToZero(delta), oneToZeroDec(delta))
	with {
			delta = 20 * millisec; //20 msec impulsion for attack or release//
	};

