#!/bin/bash
#ABC_VECTORS3D FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_3d_vectors folder
rm -R abc_3d_vectors
mkdir abc_3d_vectors
cd abc_3d_vectors/
#is there a parameter?
#if not we force 7 as default value
if [ -z $1 ]
then
    amborder=3
else
    amborder=$1
fi
#is the parameter lower than 3
#we then force 3 as a minimum
if [ $amborder -le 3 ]
then
    amborder=3
fi
headerfilename="../../bashFiles/faustCodeHeader.txt"
#
#vectors
#
for i in `seq 4 16`
do
    sortie="abc_3d_vectors$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_3d_vectors$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_3d_vectors_ui($i);" >> $sortie
done
