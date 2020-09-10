//
//--------------------------------------------------------------------------------------//
//RISSET'S BELL
//--------------------------------------------------------------------------------------//
//
import("stdfaust.lib");
//
//requires abcdbcontrol.dsp
//
//--------------------------------------------------------------------------------------//
//CONTROL PARAMETERS
//--------------------------------------------------------------------------------------//
//global parameters to control the features of the bell
//
dur = hslider("v:rissetbell/dur [unit:msec]", 10, 10, 600000, 1) / 1000;//global duration in milliseconds
freq = hslider("v:rissetbell/freq [unit:Hz]", 440, 1, 10000, 0.01);
pfreq2 = hslider("v:rissetbell/pfreq2 [unit:Hz]", 1, 0, 10, 0.001) : si.smoo;
//----------------------------------------------------------------------------------------//
//global parameters to control the reson bandpass filters//
//
resq = nentry("resq", 1000., 0., 1000., 0.1);//reson quality factor//
resg = nentry("resg", 0.1, 0., 1., 0.01);//reson gain//
//----------------------------------------------------------------------------------------//
//global parameter between generation and filtering
//
osc2filter = nentry("osc2filter", 0., 0., 1., 0.01) : si.smoo;
//----------------------------------------------------------------------------------------//
//global amplitude of the bell
gain = hslider("v:decoder/gain [unit:dB]", 0, -127, 18, 0.01) : dbtogain;
//
//----------------------------------------------------------------------------------------//
//BELL ENVELOPE FUNCTION
//----------------------------------------------------------------------------------------//
bellEnveloppe(attack, rdur) = (0.005, bellDur, _) : en.ar : *(envamp) <:(_, _) : * <:(_, _) : *
with {
		envamp = sqrt(sqrt(attack * 0.1));
		bellDur = rdur * dur;
};
//----------------------------------------------------------------------------------------//
//BELLOSCILLATOR2 FUNCTION WITH 2 OSCILLATORS
//----------------------------------------------------------------------------------------//
bellOscillator2(rfreq, detune) = (os.osccos(fr1), os.osccos(fr2)) : (*(a1), *(a2)) : +
with {
		fr1 = rfreq*freq+detune;
		fr2 = fr1 * pfreq2;	
		test = (pfreq2 == 1.);
		a1 = 0.5*(1+test);
		a2 = 0.5*(1-test);
};
//
//----------------------------------------------------------------------------------------//
//BELLGENERATOR2 FUNCTION WITH DOUBLE SINUS AND FILTER IN PARALLEL
//----------------------------------------------------------------------------------------//	
bellGenerator2(attack, rdur, rfreq, detune) = crossoscfilter : *(gain)
with {
		fc = rfreq*freq+detune;
		filter = fi.resonbp(fc, resq, resg);
		crossoscfilter = (osc2filter*filter+(1-osc2filter)*bellOscillator2(rfreq, detune))*bellEnveloppe(attack, rdur);
};
//
//----------------------------------------------------------------------------------------//
//----------------------------------------------------------------------------------------//
bell1 = bellGenerator2(1, 1, 0.56, 0.);
bell2 = bellGenerator2(0.67, 0.9, 0.56, 1.);
bell3 = bellGenerator2(1, 0.65, 0.92, 0.);
bell4 = bellGenerator2(1.8, 0.55, 0.92, 1.7);
bell5 = bellGenerator2(2.67, 0.325, 1.19, 0.);
bell6 = bellGenerator2(1.67, 0.35, 1.7, 0.);
bell7 = bellGenerator2(1.46, 0.25, 2., 0.);
bell8 = bellGenerator2(1.33, 0.2, 2.74, 0.);
bell9 = bellGenerator2(1.33, 0.15, 3., 0.);
bell10 = bellGenerator2(1., 0.1, 3.76, 0.);
bell11 = bellGenerator2(1.33, 0.075, 4.07, 0.);
rissetsbell = (_, _) <: (bell1, bell2, bell3, bell4, bell5, bell6, bell7, bell8, bell9, bell10, bell11);
//