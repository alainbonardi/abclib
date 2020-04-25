#!/bin/bash
#ABC_SCOPES FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_scopes
mkdir abc_scopes
cd abc_scopes/
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
headerfilename="../../bashFilesForFaustCodeGeneration/faustCodeHeader.txt"
for i in `seq 1 $amborder`
do
let "j = 2 * $i + 2"
sortie="abc_scope$i.dsp"
echo "" > $sortie
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_scope$i\";
//
//SCOPE OBJECTS FOR AMBISONIC VIZUALISATION USING MAX SCOPE~ OBJECT
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcd2dscope.dsp\");
//
n = $i;//ambisonic order//
process = (rho <: (_, _) : (*(sin(theta)), *(cos(theta))) : (*(-1), _));" >> $sortie
done
