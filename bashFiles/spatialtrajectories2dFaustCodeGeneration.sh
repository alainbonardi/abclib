#!/bin/bash
#ABC_2D_SPATIALTRAJECTORIES FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_2d_spatialtrajectories
mkdir abc_2d_spatialtrajectories
cd abc_2d_spatialtrajectories/
#no parameter is necessary for these spatial trajectories dsp files
headerfilename="../../bashFiles/faustCodeHeader.txt"
associatedcommonfilename="../abccommon/abc2dspatialtrajectories.dsp"
utilityfilename1="../abccommon/abcutilities/abcplayer.dsp"
utilityfilename2="../abccommon/abcutilities/abclines.dsp"
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
#writes the associated common file
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$associatedcommonfilename"
#writes the other common file (utility functions)
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$utilityfilename1"
echo "//
process = squareAndzTrajectory2d;" >> $sortie
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
#writes the associated common file
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$associatedcommonfilename"
#writes the other common file (utility functions)
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$utilityfilename1"
echo "//
process = squareTrajectory2d;" >> $sortie
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
#writes the associated common file
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$associatedcommonfilename"
#writes the other common file (utility functions)
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$utilityfilename1"
echo "//
process = zTrajectory2d;" >> $sortie
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
#writes the associated common file
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$associatedcommonfilename"
#writes the other common file (utility functions)
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$utilityfilename2"
echo "//
process = randomTrajectory2d(freq, size);" >> $sortie
