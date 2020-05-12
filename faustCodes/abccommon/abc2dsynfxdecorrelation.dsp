//
//--------------------------------------------------------------------------------------//
//SYN DECORRELATION GENERATES SPATIAL DECORRELATED COMPONENTS IN AMBISONICS FROM ONE MONO SIGNAL
//FX DELAY APPLIES DECORRELATIONS TO SPATIAL COMPONENTS ALREADY CREATED
//THE DECORRELATION IS DEFINED FOR EACH SPATIAL COMPONENT AMONG P=2*N+1 AT THE AMBISONIC ORDER N
//AS A DELAY OF 0 IF FACTOR IS UNDER A CERTAIN VALUE 1-(i+1)/P AND OF I*DELAY/P IN THE CONTRARY CASE
//AS IN SYN OR FX DELAY THE DELAY INCREASES ACCORDING TO THE INDEX OF COMPONENTS
//BUT IT INCREASES AT EACH STEP AND IT IS MODULATED BY A THRESHOLD
//THEREFORE DELAYS ARE PROGRESSIVELY REVEALED WHEN THE FACTOR INCREASES
//WHEN THE FACTOR IS CLOSE TO 0, ONLY UPPER COMPONENTS ARE DELAYED
//WHEN THE FACTOR INCREASES, MORE AND MORE COMPONENTS ARE DELAYED
//
//H					THRESHOLD			DELAY
//0					1-1/P				0 OR DELAY/P
//-1				1-2/P				0 OR 2*DELAY/P
//1					1-3/P				0 OR 3*DELAY/P
//-2
//2
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
delay = hslider("v:synfxdecorrelation/delay [unit:samples]", 44100, 10, maxSampSize, 1);
window = 100; //by default a window of 100 milliseconds for the interpolation of delays//
winfreq = 1000. / window;
factor = hslider("v:synfxdecorrelation/factor", 0, 0, 1, 0.001);
//
//--------------------------------------------------------------------------------------//
//COMPUTES DURATIONS IN SAMPLES ACCORDING TO THE INDEX OF THE SPATIAL COMPONENT AND THE DELAY//
//--------------------------------------------------------------------------------------//
//computes the ith duration of the ith delay in samples
//
dur(d, i, p) = int((factor >= 1 - (i+1) / n) * i * delay / n); //the delay is either 0 (when factor < 1-(i+1)/n) or (i+1) * delay / n
//
fxdelay(n, durmax, f) = par(i, n, fdOverlappedDoubleDelay21s(dur(delay, i, n), f, fd));
sindelay(n, durmax, f, fd) = _ <: si.bus(n) : fxdelay(n, delay, f, fd);
//