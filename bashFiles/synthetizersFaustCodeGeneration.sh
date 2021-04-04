#!/bin/bash
#ABC_SYNTHETIZERS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_synthetizers folder
rm -R abc_synthetizers
mkdir abc_synthetizers
cd abc_synthetizers/
#no parameter is necessary for these spatial trajectories dsp files
headerfilename="../../bashFiles/faustCodeHeader.txt"
associatedcommonfilename1a="../abccommon/abcsoundcoat.dsp"
associatedcommonfilename1b="../abccommon/abcsoundgrain.dsp"
utilityfilename1="../abccommon/abcutilities/abcdbcontrol.dsp"
utilityfilename2="../abccommon/abcutilities/abcplayer.dsp"
utilityfilename3="../abccommon/abcutilities/abcgranu.dsp"
utilityfilename4="../abccommon/abcutilities/abcsinenv.dsp"
associatedcommonfilename2="../abccommon/abcgenerator.dsp"
associatedcommonfilename3="../abccommon/abcrissetsbell.dsp"
associatedcommonfilename4="../abccommon/abcdrops.dsp"
#
#abc_soundcoat.dsp
#
sortie="abc_soundcoat.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_soundcoat\";" >> $sortie
#writes the associated common file
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$associatedcommonfilename1a"
#writes the other common file (utility functions)
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$utilityfilename1"
echo "//
process = soundcoat(16, f0, randfreq);" >> $sortie
#
#abc_soundgrain.dsp
#
sortie="abc_soundgrain.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_soundgrain\";" >> $sortie
#writes the associated common file
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$associatedcommonfilename1b"
#writes the other common file (utility functions)
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$utilityfilename1"
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename2"
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename3"
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename4"
echo "//
process = soundgrain(freqmult, origFreq, rainstickSamples, rainstickNsamp, gain);" >> $sortie
#
#abc_generator.dsp
#
sortie="abc_generator.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_generator\";" >> $sortie
#writes the associated common file
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$associatedcommonfilename2"
#writes the other common file (utility functions)
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$utilityfilename1"
echo "//
process = globalgenerator;" >> $sortie
#
#abc_rissetbell.dsp
#
sortie="abc_rissetsbell.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_rissetsbell\";" >> $sortie
#writes the associated common file
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$associatedcommonfilename3"
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename1"
echo "//
process = rissetsbell;" >> $sortie
#
#abc_drops.dsp
#
sortie="abc_drops.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_drops\";" >> $sortie
#writes the associated common file
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$associatedcommonfilename4"
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename1"
echo "//
process = rainDrops(dropfreq, dropthinness, avgfreq, attackdur, qf, gain);" >> $sortie