#!/bin/bash
#ABC_BUSSELECTS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_busselects folder
rm -R abc_busselects
mkdir abc_busselects
cd abc_busselects/
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
#creates flangers
headerfilename="../../bashFiles/faustCodeHeader.txt"
associatedcommonfilename="../abccommon/abcbusselect.dsp"
utilityfilename1="../abccommon/abcutilities/abclines.dsp"
for i in `seq 1 $Nch`
do
    sortie="abc_busselect$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_busselect$i\";" >> $sortie
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
process = busselect($i);" >> $sortie
done
