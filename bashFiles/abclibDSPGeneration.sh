#!/bin/bash
#runs all bashes for the generation of folders
#of Faust code from the templates in abccommon folder
#
amb2dorder=7
amb3dorder=5
#
#gives the permission to run to all bash scripts
chmod +x addsynthFaustCodeGeneration.sh
chmod +x busmultsFaustCodeGeneration.sh
chmod +x busplussesFaustCodeGeneration.sh
chmod +x busselectsFaustCodeGeneration.sh
chmod +x chowningMultipansFaustCodeGeneration.sh
chmod +x decoders2dFaustCodeGeneration.sh
chmod +x delaychainsFaustCodeGeneration.sh
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
chmod +x synfxdecorrelation3dFaustCodeGeneration.sh
chmod +x synfxdelay2dFaustCodeGeneration.sh
chmod +x synfxgain2dFaustCodeGeneration.sh
chmod +x synfxgrain2dFaustCodeGeneration.sh
chmod +x synfxmandecorrelation2dFaustCodeGeneration.sh
chmod +x synfxringmod2dFaustCodeGeneration.sh
chmod +x synfxringmod3dFaustCodeGeneration.sh
chmod +x synthesizersFaustCodeGeneration.sh
chmod +x vbap2dFaustCodeGeneration.sh
chmod +x vectors2dFaustCodeGeneration.sh 
chmod +x wider2dFaustCodeGeneration.sh
#runs the various scripts to generate DSP Faust codes
./addsynthFaustCodeGeneration.sh $amb2dorder
./busmultsFaustCodeGeneration.sh $amb2dorder
./busplussesFaustCodeGeneration.sh $amb2dorder
./busselectsFaustCodeGeneration.sh $amb2dorder
./chowningMultipansFaustCodeGeneration.sh $amb2dorder
./decoders2dFaustCodeGeneration.sh $amb2dorder
./delaychainsFaustCodeGeneration.sh $amb2dorder
./encoders2dFaustCodeGeneration.sh $amb2dorder
./flangersFaustCodeGeneration.sh $amb2dorder
./gainFaustCodeGeneration.sh $amb2dorder
./maps2dFaustCodeGeneration.sh $amb2dorder
./matricesFaustCodeGeneration.sh $amb2dorder
./mirror2dFaustCodeGeneration.sh $amb2dorder
./miscFaustCodeGeneration.sh
./multidelaysFaustCodeGeneration.sh $amb2dorder
./multifreqshiftsFaustCodeGeneration.sh $amb2dorder
./multigrainsFaustCodeGeneration.sh $amb2dorder
./multiharmosFaustCodeGeneration.sh $amb2dorder
./multinoiseFaustCodeGeneration.sh $amb2dorder
./optim2dFaustCodeGeneration.sh $amb2dorder
./randenvFaustCodeGeneration.sh $amb2dorder
./rev4FaustCodeGeneration.sh
./rotate2dFaustCodeGeneration.sh $amb2dorder
./scopes2dFaustCodeGeneration.sh $amb2dorder
./spatialtrajectories2dFaustCodeGeneration.sh
./stereodecodersFaustCodeGeneration.sh $amb2dorder
./substractsynthFaustCodeGeneration.sh $amb2dorder
./synfxdecorrelation3dFaustCodeGeneration.sh $amb3dorder
./synfxdelay2dFaustCodeGeneration.sh $amb2dorder
./synfxgain2dFaustCodeGeneration.sh $amb2dorder
./synfxgrain2dFaustCodeGeneration.sh $amb2dorder
./synfxmandecorrelation2dFaustCodeGeneration.sh $amb2dorder
./synfxringmod2dFaustCodeGeneration.sh $amb2dorder
./synfxringmod3dFaustCodeGeneration.sh $amb3dorder
./synthesizersFaustCodeGeneration.sh $amb2dorder
./vbap2dFaustCodeGeneration.sh $amb2dorder
./vectors2dFaustCodeGeneration.sh $amb2dorder
./wider2dFaustCodeGeneration.sh $amb2dorder
