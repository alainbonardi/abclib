#!/bin/bash
#SCRIPT TO CREATE PART OF THE CONTENT OF THE MAX ABCLIB LIBRARY
#skips to abclib folder in Max 8 Packages
#HELP FILES
cd ../../../"Max 8"/Packages/abclib/
path1="../../../Github/abclib/forMaxLibrary/help"
path2="help"
#deletes the existing help file
rm -R help
#creates a new help folder
mkdir help
#copies addsynth~ help files
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
do
    cp "$path1/abc_addsynth1~.maxhelp" "$path2/abc_addsynth$i~.maxhelp"
done
#copies cartopol~ help file
cp "$path1/abc_cartopol~.maxhelp" "$path2/abc_cartopol~.maxhelp"
#copies decoder~ help files
#for i in 1 2 3 4 5 6 7
#do
#    j=$(( ($i*2) + 2))
#   let "j = 2 * i + 2"
#    cp "$path1/abc_decoder1_4~.maxhelp" "$path2/abc_decoder$i_$j~.maxhelp"
#done
cp "$path1/abc_decoder1_4~.maxhelp" "$path2/abc_decoder1_4~.maxhelp"
cp "$path1/abc_decoder1_4~.maxhelp" "$path2/abc_decoder2_6~.maxhelp"
cp "$path1/abc_decoder1_4~.maxhelp" "$path2/abc_decoder3_8~.maxhelp"
cp "$path1/abc_decoder1_4~.maxhelp" "$path2/abc_decoder4_10~.maxhelp"
cp "$path1/abc_decoder1_4~.maxhelp" "$path2/abc_decoder5_12~.maxhelp"
cp "$path1/abc_decoder1_4~.maxhelp" "$path2/abc_decoder6_14~.maxhelp"
cp "$path1/abc_decoder1_4~.maxhelp" "$path2/abc_decoder7_16~.maxhelp"
#copies encoder~ help files
for i in 1 2 3 4 5 6 7
do
    cp "$path1/abc_encoder1~.maxhelp" "$path2/abc_encoder$i~.maxhelp"
done
#copies gain~ help files
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
do
    cp "$path1/abc_gain1~.maxhelp" "$path2/abc_gain$i~.maxhelp"
done
#copies map~ help files
for i in 1 2 3 4 5 6 7
do
    cp "$path1/abc_map1~.maxhelp" "$path2/abc_map$i~.maxhelp"
done
#copies poltocar~ help file
cp "$path1/abc_poltocar~.maxhelp" "$path2/abc_poltocar~.maxhelp"
#copies scope~ help files
for i in 1 2 3 4 5 6 7
do
cp "$path1/abc_scope1~.maxhelp" "$path2/abc_scope$i~.maxhelp"
done
#copies stereodecoder~ help files
for i in 1 2 3 4 5 6 7
do
cp "$path1/abc_stereodecoder1~.maxhelp" "$path2/abc_stereodecoder$i~.maxhelp"
done
#CLIPPINGS AND MISC
#deletes the existing clippings folder
rm -R clippings
#delete the existing misc folder
rm -R misc
#creates a new clippings folder
mkdir clippings
#created a new misc folder
mkdir misc
#creates a new AudioOut folder inside the clippings folder
cd "clippings"
mkdir "AudioOut"
#fills the AudioOut folder with the content
path1="../../../Github/abclib/forMaxLibrary/clippings/AudioOut"
path2="AudioOut"
cp -r "$path1/*" "$path2/*"
