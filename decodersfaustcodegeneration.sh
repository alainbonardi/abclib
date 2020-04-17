#!/bin/bash
#ABC_DECODERS FAUST CODE GENERATION
cd faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_decoders
mkdir abc_decoders
cd abc_decoders/
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
for i in `seq 1 $amborder`
do
    let "j = 2 * $i + 2"
    sortie="abc_decoder$i.dsp"
    echo "" > $sortie
echo "//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2020 -----------------------------//
//--------------------------------------------------------------------------------------//
declare name "abc_decoder$i";
declare author "Alain Bonardi";
declare licence "GPLv3";
import("stdfaust.lib");
import("../abccommon/abc2ddecoder.dsp");
//the number of outputs at order i is always forced to 2*i+2 to have an even number of LS//
process = mydecoder($i, $j);" >> $sortie
done
