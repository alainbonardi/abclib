The abclib works in multichannel environment using ambisonic paradigm
It is possible to generate the Faust code at any ambisonic order
For instance to generate addsynth faust codes at the ambisonic order 7, just type in your terminal
bash addsynthfaustcodegeneration.sh 7
At the order 7 the number of required channels is 2*7+1 = 15. We add a 16th channel to ensure the closest even configuration can be managed
If you forget the parameter 7, by default the value is 7.
