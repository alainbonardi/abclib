#!/bin/bash
#ABC_SUBSTRACTSYNTH FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_substractsynth
mkdir abc_substractsynth
cd abc_substractsynth/
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
#number of channels
let "Nch = 2 * $amborder + 2"
headerfilename="../../bashFilesForFaustCodeGeneration/faustCodeHeader.txt"
for i in `seq 1 $Nch`
do
sortie="abc_substractsynth$i.dsp"
echo "" > $sortie
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_substractsynth$i\";
//
//MULTICHANNEL TUNED FILTERS ON PINK NOISE
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcsubstractsynth.dsp\");
//
process = multisubstractsynth($i);" >> $sortie
done
