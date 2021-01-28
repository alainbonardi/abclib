//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//----------------------------- BY ALAIN BONARDI - 2019-2021 ---------------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi";
declare licence "LGPLv3";
declare name "abc_cartopol";
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
process = cartesian2polar;
