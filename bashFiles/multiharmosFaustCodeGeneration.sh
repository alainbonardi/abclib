#!/bin/bash
#ABC_MULTIHARMOS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_multiharmos folder
rm -R abc_multiharmos
mkdir abc_multiharmos
cd abc_multiharmos/
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
    sortie="abc_harmo$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_harmo$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_multiharmo_ui($i);" >> $sortie
done
