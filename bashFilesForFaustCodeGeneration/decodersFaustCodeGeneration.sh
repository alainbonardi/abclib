#!/bin/bash
#ABC_DECODERS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_decoders
mkdir abc_decoders
cd abc_decoders/
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
headerfilename="../../bashFilesForFaustCodeGeneration/faustCodeHeader.txt"
for i in `seq 1 $amborder`
do
let "j = 2 * $i + 2"
sortie="abc_decoder$i.dsp"
echo "" > $sortie
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_decoder$i\";
//
//AMBISONIC DECODERS
//
import(\"stdfaust.lib\");
import(\"../abccommon/abc2ddecoder.dsp\");
//
//the number of outputs at order i is always forced to 2*i+2 to have an even number of LS//
//first parameter of the decoder is the ambisonic order//
//second parameter of the decoder is the number of loudspeakers//
//
process = mydecoder($i, $j);" >> $sortie
done
