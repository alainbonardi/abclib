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
declare name "abc_map6";
//
//--------------------------------------------------------------------------------------//
//AMBISONIC MAPS TO SPATIALIZE ONE PUNCTUAL SOURCE
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//map in polar coordinates//
//adaptation of the map in hoa.lib that has a bug for r = 1
//
myMap(sig, r, a) = ho.encoder(ao, sig * volume(r), a) : ho.wider(ao, ouverture(r))
with
{
	volume(r) = 1. / (r * r * (r > 1) + (r <= 1));
	ouverture(r) = r * (r <= 1) + (r > 1);
};
//
ao = 6;//ambisonic order//
//first input is the signal
//second input is the radius
//third output is the angle
//
process = (_, _, _) : myMap;
