#!/bin/bash
#ABC_3D_ENCODERS FAUST CODE GENERATION
cd $HOME/Documents/Github/abclib/faustCodes/
#deletes the previous abc_3d_encoders folder
rm -R abc_3d_encoders
mkdir abc_3d_encoders
cd abc_3d_encoders/
#is there a parameter?
#if not we force 3 as default value
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
#multiple encoders at various orders 1, 2, 3 enabling to play 1, 2, 3, ... up to 8 sources
for i in `seq 1 $amborder`
do
    for j in `seq 1 8`
    do
        sortie="abc_3d_multiencoder$i""_$j.dsp"
        #writes the header
        while IFS= read -r line
        do
            echo "$line" >> $sortie
        done <"$headerfilename"
        #writes the declared name
        echo "declare name \"abc_3d_multiencoder$i""_$j\";" >> $sortie
        #writes the process line
        echo "//
process = library(\"abc.lib\").abc_3d_multiEncoder_ui($i, $j);" >> $sortie
    done
done