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
declare name "abc_scope3";
//
//--------------------------------------------------------------------------------------//
//SCOPE OBJECTS FOR AMBISONIC VIZUALISATION USING MAX SCOPE~ OBJECT
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS: NUMBER OF COMPLETE CYCLES (COMPLETE DRAWINGS) PER SECOND
//--------------------------------------------------------------------------------------//
refresh = hslider("refresh", 100, 10, 1000, 1) * 0.001;//refresh time, default is 100 msec
nsamp = int(ma.SR * 0.1);
gain = hslider("gain", 100, 1, 100, 0.01) / 100; //gain of the scope between 1 and 100
//--------------------------------------------------------------------------------------//
//ANGLE SWEEPING PERIODICALLY 0 TO 2*PI INTERVAL
//--------------------------------------------------------------------------------------//
theta = os.phasor(1, 1/refresh) * 2 * ma.PI;

//--------------------------------------------------------------------------------------//
//SPATIAL HARMONIC VECTOR
//--------------------------------------------------------------------------------------//
//we get the vector of harmonic functions thanks to the encoding function//
harmonicsVector = ho.encoder(n, 1, theta);

//--------------------------------------------------------------------------------------//
//KEEPING INPUT VALUES DURING THE CYCLE
//--------------------------------------------------------------------------------------//
memoryFunction = *(ba.pulse(nsamp)) : (+ ~ (*(1-ba.pulse(nsamp))));

//--------------------------------------------------------------------------------------//
//INPUT DISPATCHING
//--------------------------------------------------------------------------------------//
//
//starting with 2n values sigA1, sigA2, ... sigAn, sigB1, sigB2, ... sigBn
//the result is the vector sigA1, sigB1, sigA2, sigB2, ..., sigAn, sigBn
//--------------------------------------------------------------------------------------//
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));

//--------------------------------------------------------------------------------------//
//BUILDING A (2N+1) NORMALIZED VECTOR
//--------------------------------------------------------------------------------------//
connect2nplus1 = par(i, (2*n+1), _);
connect4nplus2 = par(i, (4*n+2), _);
connect2nplus1Vers4nplus2 = connect2nplus1 <: connect4nplus2;
div2nplus1 = par(i, (2*n+1), /);
norm2nplus1 = par(i, (2*n+1), _ <:(_,_) : *) :> _ : sqrt <: ((_ == 0), (_ > 0), _) : (_, *) : + <: connect2nplus1;
normalizedInput = connect2nplus1Vers4nplus2 : (connect2nplus1, norm2nplus1) : inputSort(2*n+1) : div2nplus1;
//--------------------------------------------------------------------------------------//
//BUILDING THE 2 NORMALIZED VECTORS: HARMONIC WEIGHTS CAPTURED AS INPUTS AND SPATIAL HARMONICS
//--------------------------------------------------------------------------------------//
memorizedInput = ((memoryFunction : /(2)), par(i, (2*n), memoryFunction)) : normalizedInput;
normalizedHarmonics = harmonicsVector : normalizedInput;

//--------------------------------------------------------------------------------------//
//BUILDING RHO
//--------------------------------------------------------------------------------------//
rho = memorizedInput, normalizedHarmonics : si.dot(2*n+1) : ma.fabs : *(gain) ;
//
n = 3;//ambisonic order//
process = (rho <: (_, _) : (*(sin(theta)), *(cos(theta))) : (*(-1), _));
