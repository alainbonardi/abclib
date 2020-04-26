
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
declare name "abc_rev4stereo";
//
//REV4 REVERB WITH 2 OUTPUTS FOR STEREO
//
import("stdfaust.lib");
import("../abccommon/abcutilities.dsp");
//
//2 controls: revDur which is the duration of the reverb (127 is infinite)
//revAmp is the amplitude of the output sound of the reverb
revDur = hslider("revDur", 120, 0, 127, 1) : /(254.) : smoothLine;
revGain = hslider("revGain", 100, 0, 127, 1) : basicLineDrive;
//
//--------------------------------------------------------------------------------------//
//IMPLEMENTATION OF THE REV4
//--------------------------------------------------------------------------------------//
tap(del) = de.delay(65536, int(del * millisec));
initBlock(del) = _ <: (_, tap(del)) <: (+, -);
plusMinusBlock(del) = (_, tap(del)) <: (+, -);
cascadBlock = initBlock(75.254601) : plusMinusBlock(43.533688) : plusMinusBlock(25.796) : plusMinusBlock(19.391993) : plusMinusBlock(16.363997) : (_, tap(13.645));
inputSort(n) = si.bus(2*n) <: par(i, n, (ba.selector(i, 2*n), ba.selector(i+n, 2*n)));
doubler4to8 = ((_<:(_, _)), (_<:(_, _)), (_<:(_, _)), (_<:(_, _)));
//
p(a, b, c, d, e, f, g, h) = (e, a, g, c, f, b, h, d);
reinjBlock1 = (*(revDur), *(revDur), *(revDur), *(revDur), _, _) : (_, _, inputSort(2)) : (_, _, +, +);
reinjBlock2 = (((_, _) <: ((-:*(-1)), +)), ((_, _) <:((-:*(-1)), +, _, _))) : (doubler4to8, _, _) : (p, _, _) : (-, -, +, +, *(revGain), *(revGain));
reinjBlock3 = (tap(58.643494), tap(69.432503), tap(74.523392), tap(86.12439));
//
process = cascadBlock : (reinjBlock1 : reinjBlock2) ~ (reinjBlock3, !, !) : (!, !, !, !, _, _);
