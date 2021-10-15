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
associatedcommonfilename="../abccommon/abcmultiharmo.dsp"
utilityfilename1="../abccommon/abcutilities/abclines.dsp"
utilityfilename2="../abccommon/abcutilities/abcsinenv.dsp"
utilityfilename3="../abccommon/abcutilities/abcdbcontrol.dsp"
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
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
#writes the other common file (utility functions)
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$utilityfilename1"
#writes the other common file (utility functions)
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$utilityfilename2"
#writes the other common file (utility functions)
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$utilityfilename3"
echo "//
process = blockOfHarmonizers($i);" >> $sortie
done
