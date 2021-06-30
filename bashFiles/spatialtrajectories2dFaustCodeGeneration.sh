#!/bin/bash
#ABC_2D_SPATIALTRAJECTORIES FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_spatialtrajectories folder
rm -R abc_2d_spatialtrajectories
mkdir abc_2d_spatialtrajectories
cd abc_2d_spatialtrajectories/
#no parameter is necessary for these spatial trajectories dsp files
headerfilename="../../bashFiles/faustCodeHeader.txt"
#
#abc_squareandztrajectory.dsp
#
sortie="abc_2d_squareandztrajectory.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_squareandztrajectory\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_squareAndZTrajectory_obj;" >> $sortie
#
#abc_squaretrajectory.dsp
#
sortie="abc_2d_squaretrajectory.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_squaretrajectory\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_squareTrajectory_obj;" >> $sortie
#
#abc_ztrajectory.dsp
#
sortie="abc_2d_ztrajectory.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_ztrajectory\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_zTrajectory_obj;" >> $sortie
#
#abc_randomtrajectory.dsp
#
sortie="abc_2d_randomtrajectory.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_randomtrajectory\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_2d_randomTrajectory_obj;" >> $sortie
