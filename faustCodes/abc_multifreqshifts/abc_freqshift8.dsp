//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//----------------------------- BY ALAIN BONARDI - 2019-2020 ---------------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi";
declare licence "GPLv3";
declare name "abc_freqshift8";
//
//A frequency shifter with only one positive output
//but the shifting frequency can have positive or negative values
//
import("stdfaust.lib");
//
//uses abcsinenv.dsp, abcfreqshift.dsp, abcdbcontrol.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//Shifting frequencies
fr(ind) = hslider("h:multifreqshifts/v:shiftingfreqs/fr%2ind [unit:Hz]", 0, -10000, 10000, 0.001);
//Gains in dB
gain(ind) = hslider("h:multifreqshifts/v:dynamics/gain%2ind [unit:dB]", 0, -127, 18, 0.001) : dbtogain;
//
multifreqshift(n) = par(i, n, (fshiftp(fr(i)) : *(gain(i))));
//
//--------------------------------------------------------------------------------------//
// PHASOR THAT ACCEPTS BOTH NEGATIVE AND POSITIVE FREQUENCES
//--------------------------------------------------------------------------------------//
pdPhasor(f) = os.phasor(1, f);
//
//--------------------------------------------------------------------------------------//
//FREQUENCY-SHIFTER DEFINITION
//--------------------------------------------------------------------------------------//
//
//-------------------------------------------------------------------------
// Implementation of MaxMSP biquad~
// y[n] = a0 * x[n] + a1 * x[n-1] + a2 * x[n-2] - b1 * y[n-1] - b2 * y[n-2] 
//-------------------------------------------------------------------------
biquad(x,a0,a1,a2,b1,b2)  =  x : + ~ ((-1)*conv2(b1, b2)) : conv3(a0, a1, a2) 
	with {
		conv2(c0,c1,x) = c0*x+c1*x';
		conv3(c0,c1,c2,x) = c0*x+c1*x'+c2*x'';
	};
//
//Definition of a PureData like biquad in Direct Form 2
//--------------------------------------------------------------------------------------//
pdLikeBiquadDF2(x, c_fb1, c_fb2, c_ff1, c_ff2, c_ff3) = biquad(x, ff1, ff2, ff3, fb1, fb2) 
	with {
		//first, compute the stability of the biquad//	
		discriminant = c_fb1*c_fb1 + 4 * c_fb2;
		condition1 = ((discriminant < 0) & (c_fb2 >= -1.0));
		condition2 = ((discriminant >= 0) & (c_fb1 >= -2.0) & (c_fb1 <= 2.0) & (c_fb1+c_fb2 <= 1.0) & (c_fb1-c_fb2 >= -1.0));
		stable = (condition1 | condition2);//stable is 0 (unstable) or 1 (stable)		
		//second the final coefficients to apply to biquad that is defined in maxmsp.lib//
		fb1 = c_fb1 : *(stable) : (*(-1.));
		fb2 = c_fb2 : *(stable) : (*(-1.));
		ff1 = c_ff1 : *(stable);	
		ff2 = c_ff2 : *(stable);	
		ff3 = c_ff3 : *(stable);
	};
//___________________________________________________________________________//
//Instantiation of 4 biquad filters to make an Hilbert filter
//___________________________________________________________________________//
biquad1(x) = pdLikeBiquadDF2(x, -0.02569, 0.260502, -0.260502, 0.02569, 1.);
biquad2(x) = pdLikeBiquadDF2(x, 1.8685, -0.870686, 0.870686, -1.8685, 1.);
biquad3(x) = pdLikeBiquadDF2(x, 1.94632, -0.94657, 0.94657, -1.94632, 1.);
biquad4(x) = pdLikeBiquadDF2(x, 0.83774, -0.06338, 0.06338, -0.83774, 1.);

hilbertFilter = _ <: (biquad1, biquad3) : (biquad2, biquad4);


//___________________________________________________________________________//
//fshift definition
//1 inlet, 2 outlets : +f0 outlet and -f0 outlet
//___________________________________________________________________________//
fshift(freq) = hilbertByCosAndMinusSin <: (+, -)
	with {
		//cosinus enveloppe//
		osc1 = *(-1) : +(0.25) : ma.frac : sinusEnvelop;
		//permutation//
		p1(a, b, c, d) = (a, c, b, d);
		cosAndMinusSin = pdPhasor(freq) <: (_, +(0.25)) : (osc1, osc1);
		hilbertByCosAndMinusSin = (hilbertFilter, cosAndMinusSin) : p1 : (*, *);
};

//We define specific fshift with only pos or neg output//
fshiftp(freq) = fshift(freq) : (_, !);
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
process = multifreqshift(8);
