#!/bin/bash
#ABC_MISC FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_misc folder
rm -R abc_misc
mkdir abc_misc
cd abc_misc/
#no parameter is necessary for these misc dsp files
headerfilename="../../bashFiles/faustCodeHeader.txt"
#
#abc_cartopol.dsp
#
sortie="abc_cartopol.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_cartopol\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_cartesian2polar;" >> $sortie
#
#abc_poltocar.dsp
#
sortie="abc_poltocar.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_poltocar\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_polar2cartesian;" >> $sortie
#
#abc_mult2pi.dsp
#
sortie="abc_mult2pi.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_mult2pi\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_mult2pi;" >> $sortie
#
#abc_phasor2pi.dsp
#
sortie="abc_phasor2pi.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_phasor2pi\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_phasor2pi_ui;" >> $sortie
#
#abc_linedrive.dsp
#
sortie="abc_linedrive.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_linedrive\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_linedrive_ui;" >> $sortie
#
#abc_peakamp.dsp
#
sortie="abc_peakamp.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_peakamp\";" >> $sortie
#writes the process file
echo "//
process = library(\"abc.lib\").abc_peakamp_ui;" >> $sortie
#
#abc_sounddetector.dsp
#
sortie="abc_sounddetector.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_sounddetector\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_fullSoundDetector_ui;" >> $sortie
#
#abc_envfollower.dsp
#
sortie="abc_envfollower.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_envfollower\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_envFollower_ui;" >> $sortie
