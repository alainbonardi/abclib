#!/bin/bash
#ABC_2D_SYN_DELAYS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_syn_delays folder
rm -R abc_2d_syn_delays
mkdir abc_2d_syn_delays
cd abc_2d_syn_delays/
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
associatedcommonfilename="../abccommon/abc2dsynfxdelay.dsp"
for i in `seq 1 $amborder`
do
    let "j = 2 * $i + 1"
    sortie="abc_2d_syn_delay$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_2d_syn_delay$i\";" >> $sortie
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
echo "//
process = sindelay($j, deltime, winfreq, feedback);" >> $sortie
done
#now moves to faustCodes directory to create the FX_DELAYS directory and files
cd ../
#ABC_2D_FX_DELAYS FAUST CODE GENERATION
#deletes the previous abc_2d_fx_delays folder
rm -R abc_2d_fx_delays
mkdir abc_2d_fx_delays
cd abc_2d_fx_delays/
for i in `seq 1 $amborder`
do
    let "j = 2 * $i + 1"
    sortie="abc_2d_fx_delay$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
    echo "declare name \"abc_2d_fx_delay$i\";" >> $sortie
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
echo "//
process = fxdelay($j, deltime, winfreq, feedback);" >> $sortie
done
