#!/bin/bash
#ABC_MULTINOISE FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_multinoise folder
rm -R abc_multinoise
mkdir abc_multinoise
cd abc_multinoise/
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
associatedcommonfilename="../abccommon/abcmultinoise.dsp"
for i in `seq 1 $Nch`
do
sortie="abc_multinoise$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_multinoise$i\";" >> $sortie
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
echo "//
process = multinoise($i);" >> $sortie
done
