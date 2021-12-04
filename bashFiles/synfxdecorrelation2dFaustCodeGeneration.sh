#!/bin/bash
#ABC_2D_SYN_DECORRELATIONS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_syn_decorrelations folder
rm -R abc_2d_syn_decorrelations
mkdir abc_2d_syn_decorrelations
cd abc_2d_syn_decorrelations/
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
for i in `seq 1 $amborder`
do
    let "j = 2 * $i + 1"
    sortie="abc_2d_syn_decorrelation$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_2d_syn_decorrelation$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_syn_decorrelation_ui($i);" >> $sortie
done
#now moves to faustCodes directory to create the FX_DECORRELATIONS directory and files
cd ../
#ABC_2D_FX_DECORRELATIONS FAUST CODE GENERATION
#deletes the previous abc_2d_fx_decorrelations folder
rm -R abc_2d_fx_decorrelations
mkdir abc_2d_fx_decorrelations
cd abc_2d_fx_decorrelations/
for i in `seq 1 $amborder`
do
    let "j = 2 * $i + 1"
    sortie="abc_2d_fx_decorrelation$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_2d_fx_decorrelation$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_fx_decorrelation_ui($i);" >> $sortie
done
