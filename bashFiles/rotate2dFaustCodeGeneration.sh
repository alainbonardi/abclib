#!/bin/bash
#ABC_2D_ROTATE FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_rotate folder
rm -R abc_2d_rotate
mkdir abc_2d_rotate
cd abc_2d_rotate/
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
    let "j = 2 * $i + 2"
    sortie="abc_2d_rotate$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_rotate_ui($i);" >> $sortie
done
