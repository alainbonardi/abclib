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
chmod +x decoders2dFaustCodeGeneration.sh
chmod +x encoders2dFaustCodeGeneration.sh
chmod +x gainFaustCodeGeneration.sh
chmod +x maps2dFaustCodeGeneration.sh
chmod +x miscFaustCodeGeneration.sh
chmod +x randenvFaustCodeGeneration.sh
chmod +x rev4FaustCodeGeneration.sh
chmod +x scopes2dFaustCodeGeneration.sh
chmod +x spatialtrajectories2dFaustCodeGeneration.sh
chmod +x stereodecodersFaustCodeGeneration.sh
chmod +x substractsynthFaustCodeGeneration.sh
chmod +x synfxdelay2dFaustCodeGeneration.sh
chmod +x synfxgrain2dFaustCodeGeneration.sh
chmod +x synfxdecorrelation2dFaustCodeGeneration.sh
chmod +x synfxringmod2dFaustCodeGeneration.sh
chmod +x synthetizersFaustCodeGeneration.sh
chmod +x mirror2dFaustCodeGeneration.sh
chmod +x rotate2dFaustCodeGeneration.sh
chmod +x multinoiseFaustCodeGeneration.sh
chmod +x optim2dFaustCodeGeneration.sh
#runs the various scripts to generated DSP Faust codes
./addsynthFaustCodeGeneration.sh $1
./chowningMultipansFaustCodeGeneration.sh $1
./decoders2dFaustCodeGeneration.sh $1
./encoders2dFaustCodeGeneration.sh $1
./gainFaustCodeGeneration.sh $1
./maps2dFaustCodeGeneration.sh $1
./miscFaustCodeGeneration.sh
./randenvFaustCodeGeneration.sh $1
./rev4FaustCodeGeneration.sh
./scopes2dFaustCodeGeneration.sh $1
./spatialtrajectories2dFaustCodeGeneration.sh
./stereodecodersFaustCodeGeneration.sh $1
./substractsynthFaustCodeGeneration.sh $1
./synfxdelay2dFaustCodeGeneration.sh $1
./synfxgrain2dFaustCodeGeneration.sh $1
./synfxdecorrelation2dFaustCodeGeneration.sh $1
./synfxringmod2dFaustCodeGeneration.sh $1
./synthetizersFaustCodeGeneration.sh
./mirror2dFaustCodeGeneration.sh $1
./rotate2dFaustCodeGeneration.sh $1
./multinoiseFaustCodeGeneration.sh $1
./optim2dFaustCodeGeneration.sh $1
