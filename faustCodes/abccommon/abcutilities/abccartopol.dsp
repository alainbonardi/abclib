//
//--------------------------------------------------------------------------------------//
//CARTESIAN TO POLAR CONVERSION
//angles in radians
//--------------------------------------------------------------------------------------//
cartesian2polar = (_, _) <: (module, phase) with {
	square = _ <: *;
	module = (square, square) : + : sqrt;
	phase = atan2 : *(-1);
};
//