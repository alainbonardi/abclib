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
declare name "abc_2d_syn_ringmod7";
//
//--------------------------------------------------------------------------------------//
//SYN RINGMOD GENERATES SPATIAL COMPONENTS IN AMBISONICS FROM ONE MONO SIGNAL THANKS TO RING MODULATION
//FX RINGMOD APPLIES RING MODULATION TO SPATIAL COMPONENTS ALREADY CREATED
//THE RING MODULATION IS DEFINED FOR EACH SPATIAL COMPONENT AMONG P=2*N+1 AT THE AMBISONIC ORDER N
//FOR EACH SPATIAL COMPONENT #i, THE RESULT IS EITHER THE ORIGINAL SIGNAL OR A RING MODULATED SIGNAL
//ACCORDING TO A THRESHOLD WHICH IS i/P.
//THE GENERAL PROCESS IS DRIVEN BY A FACTOR BETWEEN 0 AND 1 AND A MODULATION FREQUENCY F0
//IF FACTOR IS UNDER THE THRESHOLD i/P, THE ith RING MODULATOR OUTPUTS 0 (TO LET THE ORIGINAL SIGNAL),
//IN THE CONTRARY IT WORKS AS A REAL RING MODULATOR WITH A MODULATION FREQUENCY OF F0*i/P
//THEREFORE RING MODULATORS ARE PROGRESSIVELY REVEALED WHEN THE FACTOR INCREASES
//
//H					THRESHOLD			OUTPUT
//0					1/P					ORIGINAL OR RING MODULATION BY F0*1/P
//-1				2/P					ORIGINAL OR RING MODULATION BY F0*2/P
//1					3/P					ORIGINAL OR RING MODULATION BY F0*3/P
//-2				4/P					ORIGINAL OR RING MODULATION BY F0*4/P
//2					5/P					ORIGINAL OR RING MODULATION BY F0*5/P
//...
//-(N-1)			(P-3)/P				ORIGINAL OR RING MODULATION BY F0*(P-3)/P
//(N-1)				(P-2)/P				ORIGINAL OR RING MODULATION BY F0*(P-2)/P
//-N				(P-1)/P				ORIGINAL OR RING MODULATION BY F0*(P-1)/P
//N					P/P=1				ORIGINAL OR RING MODULATION BY F0*P/P=F0
//
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
f0 = hslider("v:synfxringmod/f0 [unit:Hz]", 10, 0, 10000, 0.0001);
factor = hslider("v:synfxringmod/factor", 0, 0, 1, 0.001);
//
//--------------------------------------------------------------------------------------//
//COMPUTES THE VARIOUS THRESHOLDS AND MODULATION FREQUENCIES OF THE SPATIAL COMPONENTS
//--------------------------------------------------------------------------------------//
//
th(i, n) = (i+1) / n;
cond(i, n, fa) = (fa >= th(i,n)) : si.smooth(ba.tau2pole(0.005));
ringmodfreq(f, i, n) = f * (i+1) / n;
//
//--------------------------------------------------------------------------------------//
//DEFINITION OF A RING MODULATOR
//--------------------------------------------------------------------------------------//
//
ringmod(f, i, n, fa) = _ <: (*(os.osccos(ringmodfreq(f, i, n))), _) : (*(c), *(1-c)) : +	
	with {
			c = cond(i, n, fa);
	};
//
fxringmod(n, f, fa) = par(i, n, ringmod(f, i, n, fa));
synringmod(n, f, fa) = _ <: si.bus(n) : fxringmod(n, f, fa);
//
process = synringmod(15, f0, factor);
