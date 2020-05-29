#!/bin/bash
#ABC_2D_OPTIMS FAUST CODE GENERATION
cd ../faustCodes/
#deletes the previous abc_2d_optims folder
rm -R abc_2d_optims
mkdir abc_2d_optims
cd abc_2d_optims/
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
associatedcommonfilename="../abccommon/abc2doptim.dsp"
for i in `seq 1 $amborder`
do
sortie="abc_2d_optim$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_optim$i\";" >> $sortie
#writes the associated common file
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$associatedcommonfilename"
echo "//
process = optimprocess($i, optimtype);" >> $sortie
done
