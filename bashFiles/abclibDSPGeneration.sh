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
chmod +x busselectsFaustCodeGeneration.sh
chmod +x chaindelaysFaustCodeGeneration.sh
chmod +x chowningMultipansFaustCodeGeneration.sh
chmod +x decoders2dFaustCodeGeneration.sh
chmod +x encoders2dFaustCodeGeneration.sh
chmod +x flangersFaustCodeGeneration.sh
chmod +x gainFaustCodeGeneration.sh
chmod +x maps2dFaustCodeGeneration.sh
chmod +x matricesFaustCodeGeneration.sh
chmod +x mirror2dFaustCodeGeneration.sh
chmod +x miscFaustCodeGeneration.sh
chmod +x multidelaysFaustCodeGeneration.sh
chmod +x multifreqshiftsFaustCodeGeneration.sh
chmod +x multigrainsFaustCodeGeneration.sh
chmod +x multiharmosFaustCodeGeneration.sh
chmod +x multinoiseFaustCodeGeneration.sh
chmod +x optim2dFaustCodeGeneration.sh
chmod +x randenvFaustCodeGeneration.sh
chmod +x rev4FaustCodeGeneration.sh
chmod +x rotate2dFaustCodeGeneration.sh
chmod +x scopes2dFaustCodeGeneration.sh
chmod +x spatialtrajectories2dFaustCodeGeneration.sh
chmod +x stereodecodersFaustCodeGeneration.sh
chmod +x substractsynthFaustCodeGeneration.sh
chmod +x synfxdecorrelation2dFaustCodeGeneration.sh
chmod +x synfxdelay2dFaustCodeGeneration.sh
chmod +x synfxgrain2dFaustCodeGeneration.sh
chmod +x synfxringmod2dFaustCodeGeneration.sh
chmod +x synthesizersFaustCodeGeneration.sh
chmod +x wider2dFaustCodeGeneration.sh
#runs the various scripts to generate DSP Faust codes
./addsynthFaustCodeGeneration.sh $amborder
./busselectsFaustCodeGeneration.sh $amborder
./chaindelaysFaustCodeGeneration.sh $amborder
./chowningMultipansFaustCodeGeneration.sh $amborder
./decoders2dFaustCodeGeneration.sh $amborder
./encoders2dFaustCodeGeneration.sh $amborder
./flangersFaustCodeGeneration.sh $amborder
./gainFaustCodeGeneration.sh $amborder
./maps2dFaustCodeGeneration.sh $amborder
./matricesFaustCodeGeneration.sh $amborder
./mirror2dFaustCodeGeneration.sh $amborder
./miscFaustCodeGeneration.sh
./multidelaysFaustCodeGeneration.sh $amborder
./multifreqshiftsFaustCodeGeneration.sh $amborder
./multigrainsFaustCodeGeneration.sh $amborder
./multiharmosFaustCodeGeneration.sh $amborder
./multinoiseFaustCodeGeneration.sh $amborder
./optim2dFaustCodeGeneration.sh $amborder
./randenvFaustCodeGeneration.sh $amborder
./rev4FaustCodeGeneration.sh
./rotate2dFaustCodeGeneration.sh $amborder
./scopes2dFaustCodeGeneration.sh $amborder
./spatialtrajectories2dFaustCodeGeneration.sh
./stereodecodersFaustCodeGeneration.sh $amborder
./substractsynthFaustCodeGeneration.sh $amborder
./synfxdecorrelation2dFaustCodeGeneration.sh $amborder
./synfxdelay2dFaustCodeGeneration.sh $amborder
./synfxgrain2dFaustCodeGeneration.sh $amborder
./synfxringmod2dFaustCodeGeneration.sh $amborder
./synthesizersFaustCodeGeneration.sh
./wider2dFaustCodeGeneration.sh $amborder
