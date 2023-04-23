#!/bin/bash
#ABC_SYNTHETIZERS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_synthetizers folder
rm -R abc_synthesizers
mkdir abc_synthesizers
cd abc_synthesizers/
#is there a parameter?
#if not we force 7 as default value
if [ -z $1 ]
then
    amborder=7
else
    amborder=$1
fi
#is the parameter lower than 7
#we then force 7 as a minimum
if [ $amborder -le 7 ]
then
    amborder=7
fi
#
headerfilename="../../bashFiles/faustCodeHeader.txt"
#
#abc_soundcoat.dsp
#
sortie="abc_soundcoat.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_soundcoat\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_soundcoat_ui;" >> $sortie
#
#abc_soundgrain.dsp
#
sortie="abc_soundgrain.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_soundgrain\";" >> $sortie
#writes the process line
echo "//
process = library(\"abcsounds.lib\").abc_soundgrain_ui;" >> $sortie
#
#abc_generator.dsp
#
sortie="abc_generator.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_generator\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_globalgenerator_ui;" >> $sortie
#
#abc_rissetbell.dsp
#
sortie="abc_rissetsbell.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_rissetsbell\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_rissetsbell_ui;" >> $sortie
#
#abc_drops.dsp
#
sortie="abc_drops.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_drops\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_raindrops_ui;" >> $sortie
#
#abc_audiotester.dsp
#
sortie="abc_audiotester.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_audiotester\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_audioTester_ui;" >> $sortie
#
#abc_puckettespaf.dsp
#
sortie="abc_puckettespaf.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_puckettespaf\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_puckettesPaf_ui;" >> $sortie
#
#abc_puckettespaf2.dsp
#
sortie="abc_puckettespaf2.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_puckettespaf2\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_puckettesPaf2_ui;" >> $sortie
#
#abc_jupiterbank.dsp
#
sortie="abc_jupiterbank.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_jupiterbank\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_jupiterbank_ui;" >> $sortie
#
#abc_jupiterbank2.dsp
#
sortie="abc_jupiterbank2.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_jupiterbank2\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_jupiterbank2_ui;" >> $sortie
#
#abc_pulsedenv2synth$i.dsp
#
#number of channels
let "Nch = 2 * $amborder + 2"
headerfilename="../../bashFiles/faustCodeHeader.txt"
for i in `seq 1 $Nch`
do
    sortie="abc_pulsedenv2synth$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_pulsedenv2synth$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_pulsedenv2synth_ui($i);" >> $sortie
done