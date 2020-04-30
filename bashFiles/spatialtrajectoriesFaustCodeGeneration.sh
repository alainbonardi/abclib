#!/bin/bash
#ABC_SPATIALTRAJECTORIES FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_spatialtrajectories
mkdir abc_spatialtrajectories
cd abc_spatialtrajectories/
#no parameter is necessary for these spatial trajectories dsp files
headerfilename="../../bashFiles/faustCodeHeader.txt"
associatedcommonfilename="../abccommon/abcspatialtrajectories.dsp"
utilityfilename1="../abccommon/abcutilities/abcplayer.dsp"
utilityfilename2="../abccommon/abcutilities/abclines.dsp"
#
#abc_squareandztrajectory.dsp
#
sortie="abc_squareandztrajectory.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_squareandztrajectory\";" >> $sortie
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
process = squareAndzTrajectory;" >> $sortie
#
#abc_squaretrajectory.dsp
#
sortie="abc_squaretrajectory.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_squaretrajectory\";" >> $sortie
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
process = squareTrajectory;" >> $sortie
#
#abc_ztrajectory.dsp
#
sortie="abc_ztrajectory.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_ztrajectory\";" >> $sortie
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
process = zTrajectory;" >> $sortie
#
#abc_randomtrajectory.dsp
#
sortie="abc_randomtrajectory.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_randomtrajectory\";" >> $sortie
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
process = randomTrajectory(freq, size);" >> $sortie
