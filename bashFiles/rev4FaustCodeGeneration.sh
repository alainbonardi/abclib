#!/bin/bash
#ABC_REV4 FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_addsynth folder
rm -R abc_rev4
mkdir abc_rev4
cd abc_rev4/
#no parameter is necessary for these rev4 dsp files
headerfilename="../../bashFiles/faustCodeHeader.txt"
associatedcommonfilename="../abccommon/abcrev4.dsp"
utilityfilename1="../abccommon/abcutilities/abclines.dsp"
#
#abc_rev4quadri.dsp
#
sortie="abc_rev4quadri.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_rev4quadri\";" >> $sortie
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
process = cascadBlock : (reinjBlock1 : reinjBlock2quadri) ~ (!, !, reinjBlock3, !, !) : (_, _, !, !, !, !, _, _);" >> $sortie
#
#abc_rev4stereo.dsp
#
sortie="abc_rev4stereo.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_rev4stereo\";" >> $sortie
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
process = cascadBlock : (reinjBlock1 : reinjBlock2stereo) ~ (reinjBlock3, !, !) : (!, !, !, !, _, _);" >> $sortie
