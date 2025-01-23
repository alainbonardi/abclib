#!/bin/bash
#ABC_3D_DECODERS FAUST CODE GENERATION
cd $HOME/Documents/Github/abclib/faustCodes/
#deletes the previous abc_2d_decoders folder
rm -R abc_3d_decoders
mkdir abc_3d_decoders
cd abc_3d_decoders/
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
#generates decoder codes with 4 to 16 loudspeakers at order #i (1, 2 or 3)
for i in `seq 1 $amborder`
do
    for j in `seq 4 16`
    do
        sortie="abc_3d_decoder$i""_$j.dsp"
        #writes the header
        while IFS= read -r line
        do
            echo "$line" >> $sortie
        done <"$headerfilename"
        #writes the declared name
        echo "declare name \"abc_3d_decoder$i""_$j\";" >> $sortie
        #writes the process line
        echo "//
process = library(\"abc.lib\").abc_3d_decoder_ui($i, $j);" >> $sortie
    done
done
