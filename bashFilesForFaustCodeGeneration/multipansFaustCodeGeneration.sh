#!/bin/bash
#ABC_MULTIPANS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_chowningmultipans folder
rm -R abc_multipans
mkdir abc_multipans
cd abc_multipans/
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
sortie="abc_pan$i.dsp"
echo "" > $sortie
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_can$i\";
//
//MULTISOURCE SIMPLE PANNER
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcmultipan.dsp\");
//" >> $sortie
#we have to manage the exception for one source when i equals 1
if [ $i = 1 ]
then
echo "process = pan1;" >> $sortie
else
echo "process = multipan($i);" >> $sortie
fi
done
