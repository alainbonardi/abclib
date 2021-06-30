#!/bin/bash
#ABC_CHAINDELAYS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_multidelays folder
rm -R abc_delaychains
mkdir abc_delaychains
cd abc_delaychains/
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
#sequential delays
for i in `seq 2 $Nch`
do
    sortie="abc_delaychain$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_delaychain$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_delaychain_obj($i);" >> $sortie
done
