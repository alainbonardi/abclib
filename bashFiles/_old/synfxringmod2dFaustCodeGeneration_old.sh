#!/bin/bash
#ABC_2D_SYN_RINGMODS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_syn_ringmods folder
rm -R abc_2d_syn_ringmods
mkdir abc_2d_syn_ringmods
cd abc_2d_syn_ringmods/
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
associatedcommonfilename="../abccommon/abc2dsynfxringmod.dsp"
for i in `seq 1 $amborder`
do
    let "j = 2 * $i + 1"
    sortie="abc_2d_syn_ringmod$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_2d_syn_ringmod$i\";" >> $sortie
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
echo "//
process = synringmod($j, f0, factor);" >> $sortie
done
#now moves to faustCodes directory to create the FX_RINGMODS directory and files
cd ../
#ABC_2D_FX_RINGMODS FAUST CODE GENERATION
#deletes the previous abc_2d_fx_ringmods folder
rm -R abc_2d_fx_ringmods
mkdir abc_2d_fx_ringmods
cd abc_2d_fx_ringmods/
for i in `seq 1 $amborder`
do
    let "j = 2 * $i + 1"
    sortie="abc_2d_fx_ringmod$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_2d_fx_ringmod$i\";" >> $sortie
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
echo "//
process = fxringmod($j, f0, factor);" >> $sortie
done
