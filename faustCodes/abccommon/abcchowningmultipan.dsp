//--------------------------------------------------------------------------------------//
//----------------------------------------abclib----------------------------------------//
//
//-------------------------------FAUST CODE FOR MIXED MUSIC-----------------------------//
//
//-------------------------------- BY ALAIN BONARDI - 2019 -----------------------------//
//--------------------------------------------------------------------------------------//

//---------------------------------ABC CHOWNINGMULTIPAN---------------------------------//

import("../abccommon/abcutilities.dsp");

//phi0 is the half angle of the stereophony, between the left speaker and the front line of the listener//
phi0 = hslider("phi0", 30, 1, 90, 1) : smoothLine;
//incAngle is the incident angle of the source when there is only one (not applicable to several sources)
incAngle = hslider("incAngle", 0, -90, 90, 1) : smoothLine;
gain = hslider("gain [unit:dB]", -15, -127, 18, 0.01) : smoothLine : dbcontrol;


//--------------------------------------------------------------------------------------//
//DEFINITION OF CHOWNING MULTIPANNERS
//
//defined as a multiple panner with regular progression of pan angle from phi0 to -phi0
//--------------------------------------------------------------------------------------//
chowningPanner(as, ahp) = _ <: (*(chowningLeftLevel), *(chowningRighLevel))
	with {
			//as is the incident angle of the source//
			//ahp is the angle of the left loudspeaker, the right loudspeaker being at -ahp//
			//we chose clockwise convention
			//
			aseff = max(min(ahp, as), -ahp);//to force as to be between -ahp and ahp//
			chowningLeftLevel = sqrt((ahp - aseff)/(2*ahp));
			chowningRighLevel = sqrt((ahp + aseff)/(2*ahp));
 	};
 
 //with one input source
 chowningPan1 = chowningPanner(incAngle, phi0) : (*(gain), *(gain));
 
 //with several input sources
 multiChowningPan(n, ahp, amp) = par(i, n, (chowningPanner(ahp*(2*i/(n-1)-1), ahp))) :> (*(amp), *(amp));
 chowningPan(n) = multiChowningPan(n, phi0, gain);
