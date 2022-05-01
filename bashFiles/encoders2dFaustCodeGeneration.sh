#!/bin/bash
#ABC_2D_ENCODERS FAUST CODE GENERATION
cd $HOME/Documents/Github/abclib/faustCodes/
#deletes the previous abc_2d_encoders folder
rm -R abc_2d_encoders
mkdir abc_2d_encoders
cd abc_2d_encoders/
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
#simple encoders at various orders 1, 2,..., 7
for i in `seq 1 $amborder`
do
    sortie="abc_2d_encoder$i.dsp"
    #writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
    #writes the declared name
    echo "declare name \"abc_2d_encoder$i\";" >> $sortie
    #writes the process line
    echo "//
process = library(\"abc.lib\").abc_2d_encoder_ui($i);" >> $sortie
done
#stereo encoders at various orders 1, 2, ..., 7
for i in `seq 1 $amborder`
do
    sortie="abc_2d_stereoencoder$i.dsp"
    #writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
    #writes the declared name
    echo "declare name \"abc_2d_stereoencoder$i\";" >> $sortie
    #writes the process line
    echo "//
process = library(\"abc.lib\").abc_2d_stereoEncoder_ui($i);" >> $sortie
done
#multiple encoders at various orders 1, 2, ..., 7 enabling to play 2, 3, ... up to 8 sources
for i in `seq 1 $amborder`
do
    for j in `seq 1 8`
    do
        sortie="abc_2d_multiencoder$i""_$j.dsp"
        #writes the header
        while IFS= read -r line
        do
            echo "$line" >> $sortie
        done <"$headerfilename"
        #writes the declared name
        echo "declare name \"abc_2d_multiencoder$i""_$j\";" >> $sortie
        #writes the process line
        echo "//
process = library(\"abc.lib\").abc_2d_multiEncoder_ui($i, $j);" >> $sortie
    done
done