#!/bin/bash
#ABC_CHOWNINGMULTIPANS FAUST CODE GENERATION
cd faustCodes/
#deletes the previous abc_chowningmultipans folder
rm -R abc_chowningmultipans
mkdir abc_chowningmultipans
cd abc_chowningmultipans/
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
#number of channels
let "Nch = 2 * $amborder + 2"
#exception for the first one
sortie="abc_chopan1.dsp"
echo "" > $sortie
echo "//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2020 -----------------------------//
//--------------------------------------------------------------------------------------//
declare name "abc_chopan1";
declare author "Alain Bonardi";
declare licence "GPLv3";
import("stdfaust.lib");
import("../abccommon/abcchowningmultipan.dsp");
process = chowningPan1;" >> $sortie
#all other cases from 2 to 16
for i in `seq 2 $Nch`
do
sortie="abc_chopan$i.dsp"
echo "" > $sortie
echo "//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2020 -----------------------------//
//--------------------------------------------------------------------------------------//
declare name "abc_chopan$i";
declare author "Alain Bonardi";
declare licence "GPLv3";
import("stdfaust.lib");
import("../abccommon/abcchowningmultipan.dsp");
process = chowningPan($i);" >> $sortie
done
