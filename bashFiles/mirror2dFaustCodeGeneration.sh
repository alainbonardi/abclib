#!/bin/bash
#ABC_2D_MIRRORS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_fx_mirrors folder
rm -R abc_2d_mirrors
mkdir abc_2d_mirrors
cd abc_2d_mirrors/
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
    sortie="abc_2d_mirror$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_2d_mirror$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_mirror_obj($i);" >> $sortie
done
