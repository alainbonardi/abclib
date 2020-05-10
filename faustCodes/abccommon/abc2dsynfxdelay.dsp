//
//--------------------------------------------------------------------------------------//
//SYN DELAY GENERATES SPATIAL DELAYED COMPONENTS IN AMBISONICS FROM ONE MONO SIGNAL
//FX DELAY APPLIES DELAYS TO SPATIAL COMPONENTS ALREADY CREATED
//THE 2*N+1 DELAYS ARE EQUALLY SPREAD BETWEEN DELTIME/(N+1) AND DELTIME WHICH IS THE MAXIMUM
//H0 HAS A DELAY OF DELTIME/N, H-1 AND H1 OF 2*DELTIME/N, ETC.
//
//H					DELAY
//0					DELTIME/(N+1)
//-1 & 1			2*DELTIME/(N+1)
//-2 & 2			3*DELTIME/(N+1)
//-3 & 3			4*DELTIME/(N+1)
//...
//-(N-1)& (N-1)		N*DELTIME/(N+1)
//-N & N			DELTIME	
//
//THE PURPOSE IS TO EXPLORE TEMPORAL DECORRELATION BETWEEN SPATIAL COMPONENTS
//EITHER BY CREATING P DELAYED COPIES OF THE INCOMING SIGNAL (SYN DELAY)
//OR BY ADDING DELAYS TO THE ALREADY EXISTING P SPATIAL COMPONENTS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
window = hslider("v:synfxdelay/window [unit:msec]", 400, 10, 1000, 1);
winfreq = 1000. / window;
deltime = hslider("v:synfxdelay/deltime [unit:msec]", 100, 2, 10000, 0.01);
feedback = hslider("v:synfxdelay/feedback", 0, 0, 1, 0.001) :  si.smoo;
//
//--------------------------------------------------------------------------------------//
//CONVERTS A DURATION IN MILLISECONDS INTO A NUMBER OF SAMPLES
//--------------------------------------------------------------------------------------//
//computes the ith duration of the ith delay and converts it to samples
//
durToSamp(d, i, p) = d * 2 / (p+1) * (1 + int((i+1)/2)) * 0.001 * ma.SR;
//
fxdelay(n, durmax, f, fd) = par(i, n, fdOverlappedDoubleDelay21s(durToSamp(durmax, i, n), f, fd));
sindelay(n, durmax, f, fd) = _ <: si.bus(n) : fxdelay(n, durmax, f, fd);
//