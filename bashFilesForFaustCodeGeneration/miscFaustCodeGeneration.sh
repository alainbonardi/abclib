#!/bin/bash
#ABC_MISC FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_misc
mkdir abc_misc
cd abc_misc/
#no parameter is necessary for these misc dsp files
headerfilename="../../bashFilesForFaustCodeGeneration/faustCodeHeader.txt"
#
#abc_cartopol.dsp
#
sortie="abc_cartopol.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_cartopol\";
//
//CARTESIAN TO POLAR CONVERTER
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcutilities.dsp\");
//
process = cartesian2polar;" >> $sortie
#
#abc_poltocar.dsp
#
sortie="abc_poltocar.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_poltocar\";
//
//POLAR TO CARTESIAN CONVERTER
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcutilities.dsp\");
//
process = polar2cartesian;" >> $sortie
#
#abc_mult2pi.dsp
#
sortie="abc_mult2pi.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_mult2pi\";
//
//A MULTIPLIER BY 2*PI
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcutilities.dsp\");
//
process = mult2pi;" >> $sortie
#
#abc_phasor2pi.dsp
#
sortie="abc_phasor2pi.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_phasor2pi\";
//
//A PHASOR WITH AN OUTPUT BETWEEN 0 AND 2*PI
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcutilities.dsp\");
//
freq = hslider(\"v:phasor2pi/freq [unit:s-1]\", 0.1, 0, 20000, 0.00001);
//
process = phasor2pi(freq);" >> $sortie
#
#abc_linedrive.dsp
#
sortie="abc_linedrive.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_linedrive\";
//
//A LINE DRIVE FUNCTION TO SCALE NUMBERS EXPONENTIALLY
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcutilities.dsp\");
//
outputmax = hslider(\"outputmax\", 1, 0, 100000, 0.01);
expcurve = hslider(\"expcurve\", 1.06, 0.00001, 2., 0.00001);
//
process = (_, 30, 127, outputmax, expcurve, 30) : pdLineDrive;" >> $sortie
