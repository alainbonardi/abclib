#!/bin/bash
#ABC_REV4 FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_rev4
mkdir abc_rev4
cd abc_rev4/
#no parameter is necessary for these rev4 dsp files
headerfilename="../../bashFilesForFaustCodeGeneration/faustCodeHeader.txt"
#
#abc_rev4quadri.dsp
#
sortie="abc_rev4quadri.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_rev4quadri\";
//
//REV4 REVERB WITH 4 OUTPUTS FOR QUADRIPHONY
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcutilities.dsp\");
//
//2 controls: revDur which is the duration of the reverb (127 is infinite)
//revAmp is the amplitude of the output sound of the reverb
revDur = hslider(\"revDur\", 120, 0, 127, 1) : /(254.) : smoothLine;
revGain = hslider(\"revGain\", 100, 0, 127, 1) : basicLineDrive;
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
reinjBlock2 = (((_, _) <: (_, _, (-:*(-1)), +)), ((_, _) <:((-:*(-1)), +, _, _))) : (_, _, doubler4to8, _, _) : (_, _, p, _, _) : (*(revGain), *(revGain), -, -, +, +, *(revGain), *(revGain));
reinjBlock3 = (tap(58.643494), tap(69.432503), tap(74.523392), tap(86.12439));
//
process = cascadBlock : (reinjBlock1 : reinjBlock2) ~ (!, !, reinjBlock3, !, !) : (_, _, !, !, !, !, _, _);" >> $sortie
#
#abc_rev4stereo.dsp
#
sortie="abc_rev4stereo.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_rev4stereo\";
//
//REV4 REVERB WITH 2 OUTPUTS FOR STEREO
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcutilities.dsp\");
//
//2 controls: revDur which is the duration of the reverb (127 is infinite)
//revAmp is the amplitude of the output sound of the reverb
revDur = hslider(\"revDur\", 120, 0, 127, 1) : /(254.) : smoothLine;
revGain = hslider(\"revGain\", 100, 0, 127, 1) : basicLineDrive;
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
process = cascadBlock : (reinjBlock1 : reinjBlock2) ~ (reinjBlock3, !, !) : (!, !, !, !, _, _);" >> $sortie
