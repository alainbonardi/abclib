#!/bin/bash
#ABC_STEREODECODERS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_stereodecoders
mkdir abc_stereodecoders
cd abc_stereodecoders/
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
sortie="abc_stereodecoder$i.dsp"
echo "" > $sortie
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_stereodecoder$i\";
//
//AMBISONIC ENCODERS
//
import(\"stdfaust.lib\");
import(\"../abccommon/abc2dstereodecoder.dsp\");
//
ao = $i;//ambisonic order//
process = mystereodecoder(ao);" >> $sortie
done
