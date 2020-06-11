#!/bin/bash
#ABC_MISC FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_misc folder
rm -R abc_misc
mkdir abc_misc
cd abc_misc/
#no parameter is necessary for these misc dsp files
headerfilename="../../bashFiles/faustCodeHeader.txt"
utilityfilename1="../abccommon/abcutilities/abccartopol.dsp"
utilityfilename2="../abccommon/abcutilities/abcpoltocar.dsp"
utilityfilename3="../abccommon/abcutilities/abcmult2pi.dsp"
utilityfilename4="../abccommon/abcutilities/abcphasor2pi.dsp"
associatedcommonfilename5="../abccommon/abclinedrive.dsp"
utilityfilename5="../abccommon/abcutilities/abclines.dsp"
associatedcommonfilename6="../abccommon/abcpeakamp.dsp"
associatedcommonfilename7="../abccommon/abcflanger.dsp"
utilityfilename7="../abccommon/abcutilities/abcsinenv.dsp"
#
#abc_cartopol.dsp
#
sortie="abc_cartopol.dsp"
#writes the header
while IFS= read -r line
do
    echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_cartopol\";" >> $sortie
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename1"
echo "//
process = cartesian2polar;" >> $sortie
#
#abc_poltocar.dsp
#
sortie="abc_poltocar.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_poltocar\";" >> $sortie
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename2"
echo "//
process = polar2cartesian;" >> $sortie
#
#abc_mult2pi.dsp
#
sortie="abc_mult2pi.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_mult2pi\";" >> $sortie
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename3"
echo "//
process = mult2pi;" >> $sortie
#
#abc_phasor2pi.dsp
#
sortie="abc_phasor2pi.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_phasor2pi\";" >> $sortie
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename4"
echo "//
process = phasor2pi(freq);" >> $sortie
#
#abc_linedrive.dsp
#
sortie="abc_linedrive.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_linedrive\";" >> $sortie
#writes the associated common file
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$associatedcommonfilename5"
#writes the other common file (utility functions)
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$utilityfilename5"
echo "//
process = (_, 30, 127, outputmax, expcurve, 30) : pdLineDrive;" >> $sortie
#
#abc_peakamp.dsp
#
sortie="abc_peakamp.dsp"
#writes the header
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_peakamp\";" >> $sortie
#writes the associated common file
while IFS= read -r line
do
echo "$line" >> $sortie
done <"$associatedcommonfilename6"
echo "//
process = peakamp(nsamp);" >> $sortie
