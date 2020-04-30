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
