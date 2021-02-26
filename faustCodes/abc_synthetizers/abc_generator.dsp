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
declare name "abc_generator";
//
//--------------------------------------------------------------------------------------//
//MULTI CHANNEL GAINS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//uses abcdbcontrol.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
gain = hslider("v:generator/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//
//controls for the noise generator
//
noiseonoff = checkbox("v:generator/h:noise/noiseon") : si.smoo;
noisecutoff = hslider("v:generator/h:noise/noisecutoff [unit:Hz]", 1760, 20, 20000, 0.01);
noisepulserate = hslider("v:generator/h:noise/noisepulserate [unit:Hz]", 3, 0.01, 20, 0.01) * 0.5;
noisepulseratio = hslider("v:generator/h:noise/noisepulseratio", 1, 0, 10, 1);
//
//controls for the sinus generator
//
sinusonoff = checkbox("v:generator/h:sinus/sinuson") : si.smoo;
sinusfreq = hslider("v:generator/h:sinus/sinusfreq [unit:Hz]", 440, 20, 20000, 0.01);
sinuspulserate = hslider("v:generator/h:sinus/sinuspulserate [unit:Hz]", 3, 0.01, 20, 0.01) * 0.5;
sinuspulseratio = hslider("v:generator/h:sinus/sinuspulseratio", 1, 0, 10, 1);
//
//controls for the phasor generator
//
phasoronoff = checkbox("v:generator/h:phasor/phasoron") : si.smoo;
phasorfreq = hslider("v:generator/h:phasor/phasorfreq [unit:Hz]", 440, 20, 20000, 0.01);
phasorpulserate = hslider("v:generator/h:phasor/phasorpulserate [unit:Hz]", 3, 0.01, 20, 0.01) * 0.5;
phasorpulseratio = hslider("v:generator/h:phasor/phasorpulseratio", 1, 0, 10, 1);
//
//--------------------------------------------------------------------------------------//
//CLIP FUNCTION BETWEEN 0 AND 1
//--------------------------------------------------------------------------------------//
clip(x) = 1 * supTest + x * rangeTest
	with {
			infTest = (x < 0);
			supTest = (x > 1);
			rangeTest = (1 - infTest) * (1 - supTest);
};
//--------------------------------------------------------------------------------------//
//ENVELOPE OF THE SOUND
//--------------------------------------------------------------------------------------//
pulseEnv(rate, ratio) = os.osccos(rate) <: * : *(ratio) : -(ratio-1) : clip;
//
//--------------------------------------------------------------------------------------//
//GENERATORS
//--------------------------------------------------------------------------------------//
noisegenerator = (no.noise, pulseEnv(noisepulserate, noisepulseratio)) : * : *(noiseonoff) : fi.resonlp(noisecutoff, 5, 0.75);
sinusgenerator = (os.osccos(sinusfreq), pulseEnv(sinuspulserate, sinuspulseratio)) : * : *(sinusonoff);
phasorgenerator = (os.phasor(1, phasorfreq), pulseEnv(phasorpulserate, phasorpulseratio)) : * : *(phasoronoff);
//
//--------------------------------------------------------------------------------------//
//COMBINATION OF THE THREE GENERATORS
//--------------------------------------------------------------------------------------//
globalgenerator = (noisegenerator, sinusgenerator, phasorgenerator) :> *(gain);

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
process = globalgenerator;
