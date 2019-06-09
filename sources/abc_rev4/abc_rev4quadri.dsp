//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//

declare name "abcrev4quadri.dsp";
declare author "Alain Bonardi";
declare licence "GPLv3";
import("stdfaust.lib");

import("../abccommon/abcline.dsp");

//2 controls: revDur which is the duration of the reverb (127 is infinite)
//revAmp is the amplitude of the output sound of the reverb

revDur = hslider("revDur", 120, 0, 127, 1) : /(254.) : smoothLine;
revGain = hslider("revGain", 100, 0, 127, 1) : basicLineDrive;

smoothLine = si.smooth(ba.tau2pole(0.05));
millisec = ma.SR / 1000.0;

//--------------------------------------------------------------------------------------//
//IMPLEMENTATION OF THE REV4
//--------------------------------------------------------------------------------------//
tap(del) = de.delay(65536, int(del * millisec));
initBlock(del) = _ <: (_, tap(del)) <: (+, -);
plusMinusBlock(del) = (_, tap(del)) <: (+, -);
cascadBlock = initBlock(75.254601) : plusMinusBlock(43.533688) : plusMinusBlock(25.796) : plusMinusBlock(19.391993) : plusMinusBlock(16.363997) : (_, tap(13.645));
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));
doubler4to8 = ((_<:(_, _)), (_<:(_, _)), (_<:(_, _)), (_<:(_, _)));

p(a, b, c, d, e, f, g, h) = (e, a, g, c, f, b, h, d);
reinjBlock1 = (*(revDur), *(revDur), *(revDur), *(revDur), _, _) : (_, _, inputSort(2)) : (_, _, +, +);
reinjBlock2 = (((_, _) <: (_, _, (-:*(-1)), +)), ((_, _) <:((-:*(-1)), +, _, _))) : (_, _, doubler4to8, _, _) : (_, _, p, _, _) : (*(revGain), *(revGain), -, -, +, +, *(revGain), *(revGain));
reinjBlock3 = (tap(58.643494), tap(69.432503), tap(74.523392), tap(86.12439));

process = cascadBlock : (reinjBlock1 : reinjBlock2) ~ (!, !, reinjBlock3, !, !) : (_, _, !, !, !, !, _, _);

