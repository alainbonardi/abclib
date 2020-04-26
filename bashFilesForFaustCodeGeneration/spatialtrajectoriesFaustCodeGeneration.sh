#!/bin/bash
#ABC_SPATIALTRAJECTORIES FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_spatialtrajectories
mkdir abc_spatialtrajectories
cd abc_spatialtrajectories/
#no parameter is necessary for these spatial trajectories dsp files
headerfilename="../../bashFilesForFaustCodeGeneration/faustCodeHeader.txt"
#
#abc_squareandztrajectory.dsp
#
sortie="abc_squareandztrajectory.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_squareandztrajectory\";
//
//GENERATES A SQUARE OR Z TRAJECTORY IN CARTESIAN COORDINATES
//WITH THE POSSIBILITY OF CROSSFADE BETWEEN THE 2
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcspatialtrajectories.dsp\");
//
//crossfade goes from 0 to 1//
//0 stands for square, 1 stands for z and any value in between gives an interpolation
//between 2
crossfade = hslider(\"crossfade\", 0, 0, 1, 0.01);
//
xpos = Player(freq, squarex, mySamplesNum) * (1 - crossfade) + Player(freq, zx, mySamplesNum) * crossfade;
ypos = Player(freq, squarey, mySamplesNum) * (1 - crossfade) + Player(freq, zy, mySamplesNum) * crossfade;
//
process = (xpos, ypos) : (*(size), *(size));" >> $sortie
#
#abc_squaretrajectory.dsp
#
sortie="abc_squaretrajectory.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_squaretrajectory\";
//
//GENERATES A SQUARE TRAJECTORY IN CARTESIAN COORDINATES
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcspatialtrajectories.dsp\");
//
process = (Player(freq, squarex, mySamplesNum), Player(freq, squarey, mySamplesNum)) : (*(size), *(size));" >> $sortie
#
#abc_ztrajectory.dsp
#
sortie="abc_ztrajectory.dsp"
echo "" > $sortie
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
echo "declare name \"abc_ztrajectory\";
//
//GENERATES A Z TRAJECTORY IN CARTESIAN COORDINATES
//
import(\"stdfaust.lib\");
import(\"../abccommon/abcspatialtrajectories.dsp\");
//
process = (Player(freq, zx, mySamplesNum), Player(freq, zy, mySamplesNum)) : (*(size), *(size));" >> $sortie
