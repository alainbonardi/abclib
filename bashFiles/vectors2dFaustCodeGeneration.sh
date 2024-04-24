#!/bin/bash
#ABC_VECTORS2D FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_vectors folder
rm -R abc_2d_vectors
mkdir abc_2d_vectors
cd abc_2d_vectors/
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
#
#vectors
#
for i in `seq 3 $Nch`
do
    sortie="abc_2d_vectors$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_vectors$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_vectors_ui($i);" >> $sortie
done
