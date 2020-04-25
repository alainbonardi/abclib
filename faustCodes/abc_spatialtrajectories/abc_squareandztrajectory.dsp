
//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//----------------------------- BY ALAIN BONARDI - 2019-2020 ---------------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi";
declare licence "GPLv3";
declare name "abc_squareandztrajectory";
//
//GENERATES A SQUARE OR Z TRAJECTORY IN CARTESIAN COORDINATES
//WITH THE POSSIBILITY OF CROSSFADE BETWEEN THE 2
//
import("stdfaust.lib");
import("../abccommon/abcspatialtrajectories.dsp");
//
//crossfade goes from 0 to 1//
//0 stands for square, 1 stands for z and any value in between gives an interpolation
//between 2
crossfade = hslider(crossfade, 0, 0, 1, 0.01);
//
xpos = Player(freq, squarex, mySamplesNum) * (1 - crossfade) + Player(freq, zx, mySamplesNum) * crossfade;
ypos = Player(freq, squarey, mySamplesNum) * (1 - crossfade) + Player(freq, zy, mySamplesNum) * crossfade;
//
process = (xpos, ypos) : (*(size), *(size));
