
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
declare name "abc_squaretrajectory";
//
//GENERATES A SQUARE TRAJECTORY IN CARTESIAN COORDINATES
//
import("stdfaust.lib");
import("../abccommon/abcspatialtrajectories.dsp");
//
process = (Player(freq, squarex, mySamplesNum), Player(freq, squarey, mySamplesNum)) : (*(size), *(size));
