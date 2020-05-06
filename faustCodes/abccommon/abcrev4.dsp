//
//--------------------------------------------------------------------------------------//
//REV4 REVERB WITH 2 OR 4 OUTPUTS
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//
//2 controls: revDur which is the duration of the reverb (127 is infinite)
//revAmp is the amplitude of the output sound of the reverb
revDur = hslider("v:rev4/revDur", 120, 0, 127, 1) : /(254.) : si.smoo;
revGain = hslider("v:rev4/revGain", 100, 0, 127, 1) : basicLineDrive;
//
//--------------------------------------------------------------------------------------//
//IMPLEMENTATION OF THE REV4
//--------------------------------------------------------------------------------------//
millisec = ma.SR / 1000.0;
tap(del) = de.delay(65536, int(del * millisec));
initBlock(del) = _ <: (_, tap(del)) <: (+, -);
plusMinusBlock(del) = (_, tap(del)) <: (+, -);
cascadBlock = initBlock(75.254601) : plusMinusBlock(43.533688) : plusMinusBlock(25.796) : plusMinusBlock(19.391993) : plusMinusBlock(16.363997) : (_, tap(13.645));
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));
doubler4to8 = ((_<:(_, _)), (_<:(_, _)), (_<:(_, _)), (_<:(_, _)));
//
p(a, b, c, d, e, f, g, h) = (e, a, g, c, f, b, h, d);
reinjBlock1 = (*(revDur), *(revDur), *(revDur), *(revDur), _, _) : (_, _, inputSort(2)) : (_, _, +, +);
reinjBlock2quadri = (((_, _) <: (_, _, (-:*(-1)), +)), ((_, _) <:((-:*(-1)), +, _, _))) : (_, _, doubler4to8, _, _) : (_, _, p, _, _) : (*(revGain), *(revGain), -, -, +, +, *(revGain), *(revGain));
reinjBlock2stereo = (((_, _) <: ((-:*(-1)), +)), ((_, _) <:((-:*(-1)), +, _, _))) : (doubler4to8, _, _) : (p, _, _) : (-, -, +, +, *(revGain), *(revGain));
reinjBlock3 = (tap(58.643494), tap(69.432503), tap(74.523392), tap(86.12439));
