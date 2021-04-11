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
declare name "abc_drops";
import("stdfaust.lib");
//
//uses abcdbcontrol.dsp
//
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//period of the drops
dropperiod = hslider("v:drops/dropperiod", 1000, 1, 10000, 0.01);
dropfreq = 1000. / dropperiod;
//
//quality factor of the reson filter
qf = hslider("v:drops/qf", 50, 1, 1000, 1); //quality factor for the reson filter, 50 by default
//
//use of the limiter or not
limiter = nentry("v:drops/limiter", 1, 0, 1, 1) : si.smoo;
//
//average randomized frequency
avgfreq = hslider("v:drops/avgfreq", 1407, 50, 10000, 0.01);
//
//attack duration in milliseconds (then converted to seconds)
//
attackdur = hslider("v:drops/attackdur", 5, 1, 100, 1) / 1000 ; //attack duration, 5 milliseconds by default
//
//impulsion thinness
//
dropthinness = hslider("v:drops/dropthinness", 50, 0.01, 1000, 0.01); //must be > 0
//
gain = hslider("v:drops/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//
//--------------------------------------------------------------------------------------//
//CLIP FUNCTION BETWEEN 0 AND 1
//--------------------------------------------------------------------------------------//
clip(x) =  1 * supTest + x * rangeTest
	with {
			infTest = (x < 0);
			supTest = (x > 1);
			rangeTest = (1 - infTest) * (1 - supTest);
};
//--------------------------------------------------------------------------------------//
//RAINDROPS FUNCTION
//--------------------------------------------------------------------------------------//
rainDrops(df, dthi, af, att, q, g) = (variableFrequency, exciter) : (_, reson) : envelope : * <: output with {
	//
	//df is the frequency of appearance of drops
	//dthi is the thinness of the drops
	//af is the average frequency for the randomization of frequencies
	//att is the duration of the attack of the envelope
	//rel is the duration of the release of the envelope
	//
	//constants for freq randomization
	randomPeriodAmp = 2000; //in milliseconds
	//
	//reson filter gain
	fg = 0.05;//
	//
	//constants for the drop envelope
	releasedur = 0.1; //release duration, 100 milliseconds by default
	//
	//to calibrate the randomization of the frequency of the filter
	randomizedFrequencyCalibration = +(1) : *(0.5) : *(af) : +(af);
	//to calibrate the randomization of the duration between two successive frequency randomization
	randomizedDurationCalibration = +(1) : *(0.5) : *(randomPeriodAmp) : *(0.1) : +(1) : /(1000) : *(ma.SR) : int;
	//
	permutation(a,b) = (b, a);
	variablePulseAndDuration = ((ba.pulse <: (_, _), (no.noise : randomizedDurationCalibration)) : (_, ba.sAndH) : permutation) ~ (+(10)) : (!, _);
	variableFrequency = ((variablePulseAndDuration <: (_, _)), (no.noise : randomizedFrequencyCalibration)) : (_, ba.sAndH);
	reson(f) = fi.resonbp(f, q, 0.05);
	exciter = os.phasor(1, df) : *(-dthi) : +(1) : clip;
	envelope = (en.ar(att, releasedur), _) : (+(1), _);
	output = (co.limiter_1176_R4_mono, _) : (*(limiter), *(1-limiter)) : + : *(g);
};
//
//
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
process = rainDrops(dropfreq, dropthinness, avgfreq, attackdur, qf, gain);
