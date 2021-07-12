#!/bin/bash
#ABC_MULTIFREQSHIFTS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_multifreqshifts folder
rm -R abc_multifreqshifts
mkdir abc_multifreqshifts
cd abc_multifreqshifts/
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
#creates an array of harmonizers
headerfilename="../../bashFiles/faustCodeHeader.txt"
#
for i in `seq 1 $Nch`
do
    sortie="abc_freqshift$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_freqshift$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_multifreqshift_obj($i);" >> $sortie
done
