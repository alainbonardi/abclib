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
headerfilename="../../bashFiles/faustCodeHeader.txt"
associatedcommonfilename="../abccommon/abcsubstractsynth.dsp"
utilityfilename1="../abccommon/abcutilities/abcdbcontrol.dsp"
for i in `seq 1 $Nch`
do
sortie="abc_substractsynth$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_substractsynth$i\";" >> $sortie
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
echo "//
process = multisubstractsynth($i);" >> $sortie
done
