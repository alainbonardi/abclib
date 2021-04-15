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
declare name "abc_soundcoat";
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//SOUNDCOAT
//INSPIRED BY HOA SYNTHETIZERS BY PIERRE GUILLOT, ELIOTT PARIS AND JULIEN COLAFRANCESCO
//CICM
//SOUNDCOAT GENERATES N HARMONIC BANDPASS FILTERS ON A NOISE SOUND
//--------------------------------------------------------------------------------------//
//
//uses abcdbcontrol.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//for the soundcoat synthetizer 
f0 = nentry("v:synthetizers/f0 [unit:Hz]", 100, 20, 10000, 0.01);
filterQ = 120;
filterG = 1;
randwin= nentry("v:synthetizers/randwin [unit:msec]", 3000, 1, 20000, 1);
randfreq = 1000. / randwin;
gain = hslider("v:synthetizers/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//
//--------------------------------------------------------------------------------------//
//FOR THE SOUNDCOAT SYNTHETIZER
//--------------------------------------------------------------------------------------//
//--------------------------------------------------------------------------------------//
//AN ELEMENTARY BANDPASS FILTER WITH RANDOMIZED GAIN
//--------------------------------------------------------------------------------------//
//two inputs for elemFilter: left is the signal to filter, right is a random noise (from a decorrelated vector of noise)
elemFilter(fund, f, i, n) = (_, _) : (_, randVol) : (fi.resonbp(fund * i, filterQ, filterG), _) :*
	with {	
			ramp = os.phasor(1, f) : +(i/n) : ma.decimal;		
			th = (ramp > 0.001) * (ramp@1 <= 0.001);
			randVol = +(1) : *(0.1) : ba.sAndH(th) : si.smooth(ba.tau2pole(1));
};
//
//--------------------------------------------------------------------------------------//
//INPUT DISPATCHING
//--------------------------------------------------------------------------------------//
//starting with 2n values sigA1, sigA2, ... sigAn, sigB1, sigB2, ... sigBn
//the result is the vector sigA1, sigB1, sigA2, sigB2, ..., sigAn, sigBn
//--------------------------------------------------------------------------------------//
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));
//
//--------------------------------------------------------------------------------------//
//SOUNDCOAT DEFINITION AS A SET OF BANDPASS FILTERS ON 2 NOISE SIGNALS
//--------------------------------------------------------------------------------------//
soundcoat(n, fund, f) = no.multinoise(2) : ((_ <: si.bus(n)), (_ <: si.bus(n))) : inputSort(n) : par(i, n, elemFilter(fund, f, i+1, n)) :> _ : *(0.08) : *(gain); 
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
process = soundcoat(16, f0, randfreq);
