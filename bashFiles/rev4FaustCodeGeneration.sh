#!/bin/bash
#ABC_REV4 FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_rev4 folder
rm -R abc_rev4
mkdir abc_rev4
cd abc_rev4/
#no parameter is necessary for these rev4 dsp files
headerfilename="../../bashFiles/faustCodeHeader.txt"
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
#writes the process line
echo "//
process = library(\"abc.lib\").abc_rev4stereo_ui;" >> $sortie
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
#writes the process line
echo "//
process = library(\"abc.lib\").abc_rev4quadri_ui;" >> $sortie
