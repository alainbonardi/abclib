#!/bin/bash
#runs all bashes for the generation of folders
#of Faust code from the templates in abccommon folder
#
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
#
#gives the permission to run to all bash scripts
chmod +x addsynthFaustCodeGeneration.sh
chmod +x chowningMultipansFaustCodeGeneration.sh
chmod +x decodersFaustCodeGeneration.sh
chmod +x encodersFaustCodeGeneration.sh
chmod +x gainFaustCodeGeneration.sh
chmod +x mapsFaustCodeGeneration.sh
chmod +x miscFaustCodeGeneration.sh
chmod +x multipansFaustCodeGeneration.sh
chmod +x rev4FaustCodeGeneration.sh
chmod +x scopesFaustCodeGeneration.sh
chmod +x spatialtrajectoriesFaustCodeGeneration.sh
chmod +x stereodecodersFaustCodeGeneration.sh
chmod +x substractsynthFaustCodeGeneration.sh
#
./addsynthFaustCodeGeneration.sh $1
./chowningMultipansFaustCodeGeneration.sh $1
./decodersFaustCodeGeneration.sh $1
./encodersFaustCodeGeneration.sh $1
./gainFaustCodeGeneration.sh $1
./mapsFaustCodeGeneration.sh $1
./miscFaustCodeGeneration.sh
./multipansFaustCodeGeneration.sh $1
./rev4FaustCodeGeneration.sh
./scopesFaustCodeGeneration.sh $1
./spatialtrajectoriesFaustCodeGeneration.sh
./stereodecodersFaustCodeGeneration.sh $1
./substractsynthFaustCodeGeneration.sh $1
