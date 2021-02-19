
//--------------------------------------------------------------------------------------//
//DEFINITION OF PEAKAMP PROCESS
//--------------------------------------------------------------------------------------//
//
peakamp(n) = maxVal(n) : ba.sAndH(getPeak) with {
	maxVal(n) = (_, abs) ~ (max : *(1 - resetMax)) : (_, !);
	resetMax = ba.pulse(n)@1;
	getPeak = ba.pulse(n);
};

