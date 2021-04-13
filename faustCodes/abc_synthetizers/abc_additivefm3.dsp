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
declare name "abc_additivefm3";
//--------------------------------------------------------------------------------------//
//CHOWNING'S FM SYNTHESIS WITH AN ADDITIVE APPROCH 
//INSPIRED BY "FM THEORY & APPLICATIONS BY MUSICIANS FOR MUSICIANS"
//BY JOHN CHOWNING AND DAVID BRISTOW
//
//The synthesis is organized by order, each order contains two partials except the 0 order
//amplitude coefficients are define by Bessel's functions of order N
//Because of Bessel's functions implementation we need to compute the 0 and 1st orders
//on one side then the higher orders on another side.
//The signs of amplitude coefficients of lower partials are reversed for odd orders
//if the frequency is positive and for even orders if the frequency is negative
//
//This additive model is very close to the ambisonic 2D model with H0 spatial component,
//and then pairs H-1 and H1, H-2 and H2, etc.
//In a way, ambisonics is a kind of spatial synthesis.
//We try to connect the two approaches. We therefore define the generated FM spectrum with separate outputs,
//having a general order N that gives as in ambisonics 2N+1 outputs.
//p0 first component (corresponding to J0) is always sent alone to the first output.
//The next outputs are used for paired components (p1, p2), ..., (pn_low, pn_high)
//
//At order N, we decided to manage 4N pairs, that is 8N signals, dispatched to 2N outputs
//it means 4 signals are mixed to each output.
//
//
import("stdfaust.lib") ;
//
//uses abcdbcontrol.dsp
//
//--------------------------------------------------------------------------------------//
//GENERAL CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//carrier frequency (Hz)
carrier = hslider("h:additivefm/v:main/carrier [unit:Hz]", 220, 20, 10000, 0.1);
//
//modulating frequency (Hz)
modulating = hslider("h:additivefm/v:main/modulating [unit:Hz]", 0, 0, 10000, 0.1);
//
//modulation index
index = hslider("h:additivefm/v:main/index", 1, 0, 30, 0.01) ;
//
//attack duration (msec)
attack = hslider("h:additivefm/v:main/attack [unit:msec]", 100, 0, 60000, 1) / 1000;
//
//release duration (msec)
release = hslider("h:additivefm/v:main/release [unit:msec]", 2000, 0, 60000, 1) / 1000 ;
//
//gate button to trigger the synthesis
gate = button("h:additivefm/v:main/gate") ;
//
//cutoff or not (if cutoff is 1, only the first 2*int(index)+1 components are heard, 
//the amplitude of the other ones is set to 0)
cutoff = nentry("h:additivefm/v:main/cutoff", 0, 0, 1, 1);
//
//gain in dB
gain = hslider("h:additivefm/v:main/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//
//--------------------------------------------------------------------------------------//
//COMPUTATION OF AMPLITUDES AND POSITIONS OF PARTIALS
//--------------------------------------------------------------------------------------//
//
freqLo(c, m, n) = ( ( c - n * m < 0 ) * - 1 * ( c - n * m ) ) + ( ( c - n * m > 0 ) * ( c - n * m ) ) ;
//
freqHi(c, m, n) = c + n * m ;
//
amplitude(n, I) = n, I : ma.Jn <: (*(cutoff == 1), *(cutoff == 0)) : (*(n <= int(I)), _) : + ; 
//
sign(n, c, m) = ( ( ( ( c - n * m > 0 ) & ( n % 2 == 1 ) ) | ( ( c - n * m < 0 ) & ( n % 2 != 1 ) ) ) * -2 ) + 1 ;
//
J0(x) = x : ma.J0 ; 
//
J1(x) = x : ma.J1 ; 
//
//--------------------------------------------------------------------------------------//
//MAXIMUM NUMBER OF SAMPLES OF DELAY LINES USED
//CORRESPONDING TO A BIT MORE THAN 10,9 seconds at 48 KHz
//--------------------------------------------------------------------------------------//
Ndelsamp = 524288;
//
//--------------------------------------------------------------------------------------//
//COMPUTATION OF EACH ORDER 
//--------------------------------------------------------------------------------------//
//
partials(i) = order
	with {
 		a = 2 * i - 1;
		b = 2 * i;
		partialLo = sign(i, carrier, modulating) * amplitude(i, index) * os.osc(freqLo(carrier, modulating, i)) * (gate:en.ar(attack, release)) : *(gain) : de.delay(Ndelsamp, int(hslider("h:additivefm/v:dels/dur%a [unit:msec]", 0, 0, 10000, 1) * ma.SR / 1000));
		partialHi = amplitude(i, index) * os.osc(freqHi(carrier, modulating, i)) * (gate:en.ar(attack, release)) : *(gain) :de.delay(Ndelsamp, int(hslider("h:additivefm/v:dels/dur%b [unit:msec]", 0, 0, 10000, 1) * ma.SR / 1000));
		order  = partialLo, partialHi;
	};
//
//--------------------------------------------------------------------------------------//
//COMPUTATION OF THE SPECTRUM 
//--------------------------------------------------------------------------------------//
//
p0 = J0(index) * os.osc(freqHi(carrier, modulating, 0)) * (gate:en.ar(attack, release)) : *(gain) : de.delay(Ndelsamp, int(hslider("h:additivefm/v:dels/dur0 [unit:msec]", 0, 0, 10000, 1) * ma.SR / 1000));
p1 = J1(index) * sign(1, carrier, modulating) * os.osc(freqLo(carrier, modulating, 1)) * (gate:en.ar(attack, release)) : *(gain) :de.delay(Ndelsamp, int(hslider("h:additivefm/v:dels/dur1 [unit:msec]", 0, 0, 10000, 1) * ma.SR / 1000));
p2 = J1(index) * os.osc(freqHi(carrier, modulating, 1))  * (gate:en.ar(attack, release)) : *(gain) : de.delay(Ndelsamp, int(hslider("h:additivefm/v:dels/dur2 [unit:msec]", 0, 0, 10000, 1) * ma.SR / 1000));
//
spectrum(N, P) = complexSound 
with {
		//P is the total number of outputs - 1, that is excepted p0
		firstComponent = p0;
		otherComponents = p1, p2, par(i, N, partials(i+2)); //that means a total of 2*N+2 components (without p0), and P should divide 2*N+2//
		complexSound = firstComponent, (otherComponents :> si.bus(P));	
};
//
fmSpectrum(N) = spectrum(4*N-1, 2*N);
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
process = fmSpectrum(3);
