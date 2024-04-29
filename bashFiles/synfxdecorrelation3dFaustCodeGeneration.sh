#!/bin/bash
#ABC_3D_SYN_DECORRELATIONS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_3d_syn_decorrelations folder
rm -R abc_3d_syn_decorrelations
mkdir abc_3d_syn_decorrelations
cd abc_3d_syn_decorrelations/
#is there a parameter?
#if not we force 5 as default value (5 for maximum ambisonic order in 3D)
if [ -z $1 ]
then
    amborder=5
else
    amborder=$1
fi
#is the parameter lower than 5
#we then force 5 as a minimum
if [ $amborder -le 5 ]
then
    amborder=5
fi
headerfilename="../../bashFiles/faustCodeHeader.txt"
for i in `seq 1 $amborder`
do
    sortie="abc_3d_syn_decorrelation$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_3d_syn_decorrelation$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_3d_syn_decorrelation_ui($i);" >> $sortie
done
#now moves to faustCodes directory to create the FX_DECORRELATIONS directory and files
cd ../
#ABC_3D_FX_DECORRELATIONS FAUST CODE GENERATION
#deletes the previous abc_3d_fx_decorrelations folder
rm -R abc_3d_fx_decorrelations
mkdir abc_3d_fx_decorrelations
cd abc_3d_fx_decorrelations/
for i in `seq 1 $amborder`
do
    sortie="abc_3d_fx_decorrelation$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_3d_fx_decorrelation$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_3d_fx_decorrelation_ui($i);" >> $sortie
done
