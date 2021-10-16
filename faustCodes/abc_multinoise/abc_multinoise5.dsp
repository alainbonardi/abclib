//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//
//
//-----------------------BY ALAIN BONARDI & PAUL GOUTMANN - 2019-2021 ------------------//
//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//
//--------------------------------------------------------------------------------------//
//
declare author "Alain Bonardi & Paul Goutmann";
declare licence "LGPLv3";
declare name "abc_multinoise5";
//
process = library("abc.lib").abc_multinoise_obj(5);
