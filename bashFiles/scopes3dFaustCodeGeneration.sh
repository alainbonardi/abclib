#!/bin/bash
#ABC_3D_SCOPES FAUST CODE GENERATION
cd $HOME/Documents/Github/abclib/faustCodes/
#deletes the previous abc_3d_scopes folder
rm -R abc_3d_scopes
mkdir abc_3d_scopes
cd abc_3d_scopes/
#is there a parameter?
#if not we force 3 as default value
if [ -z $1 ]
then
    amborder=3
else
    amborder=$1
fi
#is the parameter lower than 3
#we then force 3 as a minimum
if [ $amborder -le 3 ]
then
    amborder=3
fi
headerfilename="../../bashFiles/faustCodeHeader.txt"
for i in `seq 1 $amborder`
do
    sortie="abc_3d_scope$i.dsp"
#writes the header
    while IFS= read -r line
    do
        echo "$line" >> $sortie
    done <"$headerfilename"
#writes the declared name
echo "declare name \"abc_2d_scope$i\";" >> $sortie
#writes the process line
echo "//
process = library(\"abc.lib\").abc_3d_scope_ui($i);" >> $sortie
done