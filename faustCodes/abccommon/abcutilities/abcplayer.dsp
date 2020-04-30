//
//--------------------------------------------------------------------------------------//
//PLAYER OF A SET OF SAMPLES WITH LINEAR INTERPOLATION
//--------------------------------------------------------------------------------------//
Player(f0, mySamp, mySampNum) = myPlayer with {
	zeroToOnePhase =  os.phasor(1, f0) : ma.decimal; 
	myIndex = zeroToOnePhase * float(mySampNum); 
	i1 = int(myIndex);
	i2 = (i1+1) % int(mySampNum);
	d = ma.decimal(myIndex);
	s1 = (mySamp, i1) : (+(1), _, _) : rdtable;
	s2 = (mySamp, i2) : (+(1), _, _) : rdtable;
	myPlayer = s1 + d * (s2 - s1);
};
//