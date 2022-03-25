#!/bin/bash
#ABC_2D_DECODERS FAUST CODE GENERATION
cd $HOME/Documents/Github/abclib/faustCodes/
#deletes the previous abc_2d_decoders folder
rm -R abc_2d_decoders
mkdir abc_2d_decoders
cd abc_2d_decoders/
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
#generates decoder codes with 2*i+2 at order #i
for i in `seq 1 $amborder`
do
let "j = 2 * $i + 2"
    sortie="abc_2d_decoder$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_decoder$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_decoder_ui($i, $j);" >> $sortie
done
#generates decoder with variable number of outputs from 2*i+1 to 16 (arbitrary choice)
for i in `seq 1 $amborder`
do
    let "k = 2 * $i + 1"
    for j in `seq $k 16`
    do
        sortie="abc_2d_decoder$i""_$j.dsp"
        #writes the header
        while IFS= read -r line
        do
            echo "$line" >> $sortie
        done <"$headerfilename"
        #writes the declared name
        echo "declare name \"abc_2d_decoder$i""_$j\";" >> $sortie
        #writes the process line
        echo "//
process = library(\"abc.lib\").abc_2d_decoder_ui($i, $j);" >> $sortie
    done
done
