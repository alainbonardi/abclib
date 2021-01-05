//
//--------------------------------------------------------------------------------------//
//CARTESIAN TO POLAR CONVERSION
//angles in radians
//--------------------------------------------------------------------------------------//
permutation(a, b) = (b, a);
//
cartesian2polar = permutation <: (module, phase) with {
	square = _ <: *;
	module = (square, square) : + : sqrt;
	phase = atan2;
};
//