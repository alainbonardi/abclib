#!/bin/bash
#ABC_2D_MAP FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_maps folder
rm -R abc_2d_maps
mkdir abc_2d_maps
cd abc_2d_maps/
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
associatedcommonfilename="../abccommon/abc2dmap.dsp"
for i in `seq 1 $amborder`
do
sortie="abc_2d_map$i.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_map$i\";" >> $sortie
#writes the associated common file
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$associatedcommonfilename"
echo "//
ao = $i;//ambisonic order//
//first input is the signal
//second input is the radius
//third output is the angle
//
process = (_, _, _) : myMap;" >> $sortie
done
