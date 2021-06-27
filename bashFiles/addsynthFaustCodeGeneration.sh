#!/bin/bash
#ABC_ADDSYNTH FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_addsynth
mkdir abc_addsynth
cd abc_addsynth/
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
headerfilename="../../bashFiles/faustCodeHeader.txt"
for i in `seq 1 $Nch`
do
    sortie="abc_addsynth$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_addsynth$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_addsynth_obj($i);" >> $sortie
done
