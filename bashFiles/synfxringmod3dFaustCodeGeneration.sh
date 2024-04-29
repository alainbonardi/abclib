#!/bin/bash
#ABC_3D_SYN_RINGMODS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_3d_syn_ringmods folder
rm -R abc_3d_syn_ringmods
mkdir abc_3d_syn_ringmods
cd abc_3d_syn_ringmods/
#is there a parameter?
#if not we force 5 as default value
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
    sortie="abc_3d_syn_ringmod$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_3d_syn_ringmod$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_3d_syn_ringmod_ui($i);" >> $sortie
done
#now moves to faustCodes directory to create the FX_RINGMODS directory and files
cd ../
#ABC_3D_FX_RINGMODS FAUST CODE GENERATION
#deletes the previous abc_3d_fx_ringmods folder
rm -R abc_3d_fx_ringmods
mkdir abc_3d_fx_ringmods
cd abc_3d_fx_ringmods/
for i in `seq 1 $amborder`
do
    sortie="abc_3d_fx_ringmod$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_3d_fx_ringmod$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_3d_fx_ringmod_ui($i);" >> $sortie
done
