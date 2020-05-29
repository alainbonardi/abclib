#!/bin/bash
#ABC_2D_SCOPES FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_scopes folder
rm -R abc_2d_scopes
mkdir abc_2d_scopes
cd abc_2d_scopes/
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
associatedcommonfilename="../abccommon/abc2dscope.dsp"
for i in `seq 1 $amborder`
do
let "j = 2 * $i + 2"
    sortie="abc_2d_scope$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_scope$i\";" >> $sortie
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
echo "//
n = $i;//ambisonic order//
process = (rho <: (_, _) : (*(sin(theta)), *(cos(theta))) : (*(-1), _));" >> $sortie
done
