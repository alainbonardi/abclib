#!/bin/bash
#ABC_STEREODECODERS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_stereodecoders folder
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
headerfilename="../../bashFiles/faustCodeHeader.txt"
associatedcommonfilename="../abccommon/abc2dstereodecoder.dsp"
utilityfilename1="../abccommon/abcutilities/abcdbcontrol.dsp"
for i in `seq 1 $amborder`
do
let "j = 2 * $i + 2"
sortie="abc_stereodecoder$i.dsp"
#writes the heade
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_stereodecoder$i\";" >> $sortie
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
process = mystereodecoder($i);" >> $sortie
done
