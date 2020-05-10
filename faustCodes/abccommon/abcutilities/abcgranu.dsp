//
maxSampSize = 1048576; //roughly a capacity of 21,84 sec of delay at sampling rate = 48KHz//
//
//--------------------------------------------------------------------------------------//
//GRANULATOR ON DELAY LINE WITH GS GRAIN SIZE, D AS MAXIMUM DELAY, S AS RAREFACTION
//USES A COSINUS ENVELOP
//--------------------------------------------------------------------------------------//
//
granulator(gs, d, s) = (_, _, _) : (env, _, del) : (_, de.delay(maxSampSize, _)) : *
	with {
			//gs is the grain size in milliseconds//
			//d is the max delay in milliseconds//
			//s is the rarefaction between 0 and 1//
			//f is the frequency of the grain
			f = 1000. / gs;
			ramp = os.phasor(1, f);
			th = (ramp > 0.001) * (ramp@1 <= 0.001);
			randTest = (_, (s : *(2) : -(1))) : >;
			factor = randTest : ba.sAndH(th);
			env = ((ramp : *(0.5) : sinusEnvelop), _) : *(factor);
			del = +(1) : *(0.5) : *(d) : *(0.001) : *(ma.SR) : ba.sAndH(th);
		};		 
//