#!/bin/bash
#ABC_RANDENVS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_randenvs folder
rm -R abc_randenvs
mkdir abc_randenvs
cd abc_randenvs/
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
associatedcommonfilename="../abccommon/abcrandenv.dsp"
for i in `seq 1 $Nch`
do
    sortie="abc_randenv$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_randenv$i\";" >> $sortie
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
echo "//
process = mTShortening($i, freq, shortening);" >> $sortie
done
