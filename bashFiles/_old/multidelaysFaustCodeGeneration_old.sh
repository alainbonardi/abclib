#!/bin/bash
#ABC_MULTIDELAYS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_multidelays folder
rm -R abc_multidelays
mkdir abc_multidelays
cd abc_multidelays/
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
#creates parallel and sequential delays
headerfilename="../../bashFiles/faustCodeHeader.txt"
associatedcommonfilename="../abccommon/abcmultidelay.dsp"
utilityfilename1="../abccommon/abcutilities/abcdoubledelay.dsp"
utilityfilename2="../abccommon/abcutilities/abcsinenv.dsp"
utilityfilename3="../abccommon/abcutilities/abcdbcontrol.dsp"
#
#parallel delays
#
for i in `seq 1 $Nch`
do
    sortie="abc_delay$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_delay$i\";" >> $sortie
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
process = delparset($i);" >> $sortie
done
