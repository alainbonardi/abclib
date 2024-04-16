// -----------------
// abc_wrp.js
// -----------------
// Automatically generate Maxpat that finds the right abc_lib objet depending on the amount of desired channels
// abclibrary | Alain Bonardi, Paul Goutmann, David Fierro & Adrien Zanni © 2019 - 2024 CICM | University Paris 8


//Ajouter un array pour garder toutes les autres attributes et les placer dans l'objet faust comme ça Ex:'@functiontype 4'



var wrapper = wrapper || {};
wrapper.numobjects = -1;
wrapper.theObjects = new Array(100);
var objectToInstantiate = "";
var actualobject;
var withUI = false;
var extraAttributes = new Array(100);

cleanup();
patching();

function patching() {
	//Constants:
	var baseAmbisonicOrder = 1;
	var maxAmbisonicOrder = 7;

	//------------------------
	var args = jsarguments;
	var jsobjectname = args[0];
	var order = baseAmbisonicOrder;
	if (typeof args[1] === 'number' && args[1] != 0) order = args[1];//Max puts a zero when there are no arguments
	if (order > maxAmbisonicOrder) order = maxAmbisonicOrder;
	var patcherName = this.patcher.name;
	var speakers = order * 2 + 2;
	var stereo = false;
	var dimensions = "2d";
	var sources = 1;//To transform the encoder to multiencoder
	var mode = "fx";//fx or syn
	var finalchannels;//variable to save the number of channels of the MC objects, if the user inputs instances or order instead of channels it will still work and we will save the value on this variable.
	for (var i = 1; i < args.length; i++) {
		if (args[i] == "@speakers" || args[i] == "@spk") {
			speakers = args[i + 1];
			var speakersSettedUp = true;
		}
		if (args[i] == "@dimensions" || args[i] == "@dim") {
			if (args[i + 1] == 3) {
				dimensions = "3d";
			} else {
				dimensions = "2d";
			}
		}
		if (args[i] == "@stereo" || args[i] == "@st") {
			if (args[i + 1] == 1) {
				stereo = true;
			} else {
				stereo = false;
			}
		}
		if (args[i] == "@sources" || args[i] == "@src") {
			sources = args[i + 1];
		}
		if (args[i] == "@mode" || args[i] == "@mod") {
			mode = args[i + 1];
		}
		if (args[i] == "@instances" || args[i] == "@inst") {
			var instances = args[i + 1];
		}
		if (args[i] == "@channels" || args[i] == "@chan" || args[i] == "@chans") {
			var channels = args[i + 1];
		}
		//Extra attributes of the 'abc' objects:
		extraAttributes[i] = args[i];
	}
	//List of ABC sweet objects:
	if (patcherName == 'abc.hoa.decoder~' || patcherName == 'abc.hoa.decoder') {
		if (patcherName == 'abc.hoa.decoder') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_decoder" + order + "_" + speakers + "~";
	} else if (patcherName == 'abc.hoa.encoder~' || patcherName == 'abc.hoa.encoder') {
		if (patcherName == 'abc.hoa.encoder') withUI = true;
		if (sources == 1) {
			objectToInstantiate = "abc_" + dimensions + "_encoder" + order + "~";
		} else {
			objectToInstantiate = "abc_" + dimensions + "_multiencoder" + order + "_" + sources + "~";
		}
	} else if (patcherName == 'abc.hoa.map~' || patcherName == 'abc.hoa.map') {
		if (patcherName == 'abc.hoa.map') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_map" + order + "_" + sources + "~";
	} else if (patcherName == 'abc.hoa.decorrelation~' || patcherName == 'abc.hoa.decorrelation') {
		if (patcherName == 'abc.hoa.decorrelation') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_" + mode + "_decorrelation" + order + "~";
	} else if (patcherName == 'abc.hoa.ringmod~' || patcherName == 'abc.hoa.ringmod') {
		if (patcherName == 'abc.hoa.ringmod') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_" + mode + "_ringmod" + order + "~";
	} else if (patcherName == 'abc.hoa.grains~' || patcherName == 'abc.hoa.grains') {
		if (patcherName == 'abc.hoa.grains') withUI = true;
		if (mode == "fx") {
			objectToInstantiate = "abc_" + "grain" + order + "~";
		} else {
			objectToInstantiate = "abc_" + dimensions + "_" + mode + "_grain" + order + "~";
		}
	} else if (patcherName == 'abc.hoa.delay~' || patcherName == 'abc.hoa.delay') {
		if (patcherName == 'abc.hoa.delay') withUI = true;
		if (mode == "fx") {
			objectToInstantiate = "abc_" + "delay" + order + "~";
		} else if (mode == "syn") {
			objectToInstantiate = "abc_" + dimensions + "_" + mode + "_delay" + order + "~";
		}
	} else if (patcherName == 'abc.mc.delay~' || patcherName == 'abc.mc.delay') {
		if (patcherName == 'abc.mc.delay') withUI = true;
		if (mode == "fx") {
			objectToInstantiate = "abc_" + "delay" + order + "~";
		} else if (mode == "chain") {
			if (order == 1) order = 2;
			objectToInstantiate = "abc_delaychain" + order + "~";
		}
	} else if (patcherName == 'abc.hoa.mirror~' || patcherName == 'abc.hoa.mirror') {
		if (patcherName == 'abc.hoa.mirror') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_mirror" + order + "~";
	} else if (patcherName == 'abc.hoa.optim~' || patcherName == 'abc.hoa.optim') {
		if (patcherName == 'abc.hoa.optim') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_optim" + order + "~";
	} else if (patcherName == 'abc.hoa.rotate~' || patcherName == 'abc.hoa.rotate') {
		if (patcherName == 'abc.hoa.rotate') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_rotate" + order + "~";
	} else if (patcherName == 'abc.hoa.scope~' || patcherName == 'abc.hoa.scope') {
		if (patcherName == 'abc.hoa.scope') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_scope" + order + "~";
	} else if (patcherName == 'abc.trajectories~' || patcherName == 'abc.trajectories') {
		if (patcherName == 'abc.trajectories') withUI = true;
		if (mode == "fx" || mode == "random") {//We use fx as it's the default setting, but we'll select the random trajectory as default
			objectToInstantiate = "abc_" + dimensions + "_randomtrajectory" + "~";
		} else if (mode == "square") {
			objectToInstantiate = "abc_" + dimensions + "_squaretrajectory" + "~";
		} else if (mode == "Z") {
			objectToInstantiate = "abc_" + dimensions + "_ztrajectory" + "~";
		} else if (mode == "squareZ" || mode == "squarez") {
			objectToInstantiate = "abc_" + dimensions + "_squareandztrajectory" + "~";
		}
	} else if (patcherName == 'abc.hoa.stereodecoder~' || patcherName == 'abc.hoa.stereodecoder') {
		if (patcherName == 'abc.hoa.stereodecoder') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_stereodecoder" + order + "~";
	} else if (patcherName == 'abc.vbap~' || patcherName == 'abc.vbap') {
		if (patcherName == 'abc.vbap') withUI = true;
		if (speakersSettedUp) {
			objectToInstantiate = "abc_" + dimensions + "_vbap" + speakers + "~";
		} else {
			if (order == 1) order = 2;
			objectToInstantiate = "abc_" + dimensions + "_vbap" + order + "~";
		}
	} else if (patcherName == 'abc.hoa.wider~' || patcherName == 'abc.hoa.wider') {
		if (patcherName == 'abc.hoa.wider') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_wider" + order + "~";
	} else if (patcherName == 'abc.mc.addsynth~' || patcherName == 'abc.mc.addsynth') {
		if (patcherName == 'abc.mc.addsynth') withUI = true;
		if (instances) {
			objectToInstantiate = "abc_" + "addsynth" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "addsynth" + order + "~";
		}
	} else if (patcherName == 'abc.mc.busselect~' || patcherName == 'abc.mc.busselect') {
		if (patcherName == 'abc.mc.busselect') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "busselect" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "busselect" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "busselect" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.audiotester~' || patcherName == 'abc.audiotester') {
		if (patcherName == 'abc.audiotester') withUI = true;
		objectToInstantiate = "abc_" + "audiotester" + "~";
	} else if (patcherName == 'abc.mc.busmult~' || patcherName == 'abc.mc.busmult') {
		if (patcherName == 'abc.mc.busmult') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "busmult" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "busmult" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "busmult" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.mc.busplus~' || patcherName == 'abc.mc.busplus') {
		if (patcherName == 'abc.mc.busplus') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "busplus" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "busplus" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "busplus" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.cartopol~' || patcherName == 'abc.cartopol') {
		if (patcherName == 'abc.cartopol') withUI = true;
		objectToInstantiate = "abc_" + "cartopol" + "~";
	} else if (patcherName == 'abc.mc.chopan~' || patcherName == 'abc.mc.chopan') {
		if (patcherName == 'abc.mc.chopan') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "chopan" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "chopan" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "chopan" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.mc.cosrandenv~' || patcherName == 'abc.mc.cosrandenv') {
		if (patcherName == 'abc.mc.cosrandenv') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "cosrandenv" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "cosrandenv" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "cosrandenv" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.drops~' || patcherName == 'abc.drops') {
		if (patcherName == 'abc.drops') withUI = true;
		objectToInstantiate = "abc_" + "drops" + "~";
	} else if (patcherName == 'abc.envfollower~' || patcherName == 'abc.envfollower') {
		if (patcherName == 'abc.envfollower') withUI = true;
		objectToInstantiate = "abc_" + "envfollower" + "~";
	} else if (patcherName == 'abc.mc.flanger~' || patcherName == 'abc.mc.flanger') {
		if (patcherName == 'abc.mc.flanger') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "flanger" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "flanger" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "flanger" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.mc.freqshift~' || patcherName == 'abc.mc.freqshift') {
		if (patcherName == 'abc.mc.freqshift') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "freqshift" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "freqshift" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "freqshift" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.mc.gain~' || patcherName == 'abc.mc.gain') {
		if (patcherName == 'abc.mc.gain') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "gain" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "gain" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "gain" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.generator~' || patcherName == 'abc.generator') {
		if (patcherName == 'abc.generator') withUI = true;
		objectToInstantiate = "abc_" + "generator" + "~";
	} else if (patcherName == 'abc.mc.harmo~' || patcherName == 'abc.mc.harmo') {
		if (patcherName == 'abc.mc.harmo') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "harmo" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "harmo" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "harmo" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.jupiterbank~' || patcherName == 'abc.jupiterbank') {
		if (patcherName == 'abc.jupiterbank') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "jupiterbank" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "jupiterbank" + instances + "~";
			finalchannels = instances;
		} else {
			if (order == 1) {
				objectToInstantiate = "abc_" + "jupiterbank~";
			} else {
				objectToInstantiate = "abc_" + "jupiterbank" + order + "~";
			}
			finalchannels = order;
		}
	} else if (patcherName == 'abc.mc.linrandenv~' || patcherName == 'abc.mc.linrandenv~') {
		if (patcherName == 'abc.mc.linrandenv') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "linrandenv" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "linrandenv" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "linrandenv" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.mc.matrix~' || patcherName == 'abc.mc.matrix') {
		if (patcherName == 'abc.mc.matrix') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "matrix" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "matrix" + instances + "~";
			finalchannels = instances;
		} else {
			if (order == 1) order = 2;
			objectToInstantiate = "abc_" + "matrix" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.mult2pi~' || patcherName == 'abc.mult2pi~') {
		if (patcherName == 'abc.mult2pi') withUI = true;
		objectToInstantiate = "abc_" + "mult2pi" + "~";
	} else if (patcherName == 'abc.mc.multinoise~' || patcherName == 'abc.mc.multinoise') {
		if (patcherName == 'abc.mc.multinoise') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "multinoise" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "multinoise" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "multinoise" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.peakamp~' || patcherName == 'abc.peakamp') {
		if (patcherName == 'abc.peakamp') withUI = true;
		objectToInstantiate = "abc_" + "peakamp" + "~";
	} else if (patcherName == 'abc.phasor2pi~' || patcherName == 'abc.phasor2pi') {
		if (patcherName == 'abc.phasor2pi') withUI = true;
		objectToInstantiate = "abc_" + "phasor2pi" + "~";
	} else if (patcherName == 'abc.poltocar~' || patcherName == 'abc.poltocar') {
		if (patcherName == 'abc.poltocar') withUI = true;
		objectToInstantiate = "abc_" + "poltocar" + "~";
	} else if (patcherName == 'abc.puckettespaf~' || patcherName == 'abc.puckettespaf') {
		if (patcherName == 'abc.puckettespaf') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "puckettespaf" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "puckettespaf" + instances + "~";
			finalchannels = instances;
		} else {
			if (order == 1) {
				objectToInstantiate = "abc_" + "puckettespaf~";
			} else {
				objectToInstantiate = "abc_" + "puckettespaf" + order + "~";
			}
			finalchannels = order;
		}
	} else if (patcherName == 'abc.mc.pulsedenv2synth~' || patcherName == 'abc.mc.pulsedenv2synth') {
		if (patcherName == 'abc.mc.pulsedenv2synth') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "pulsedenv2synth" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "pulsedenv2synth" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "pulsedenv2synth" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.rev4~' || patcherName == 'abc.rev4~') {
		if (patcherName == 'abc.rev4') withUI = true;
		//By default we use stereo, but if they put on the parameters something different from 2 or 4(only possible options) we fall into the quadri option (4)
		if (mode != "fx") {
			if (mode == "stereo") {
				objectToInstantiate = "abc_" + "rev4stereo~";
			} else if (mode == "quadri") {
				objectToInstantiate = "abc_" + "rev4quadri~";
			}
		} else if (channels) {
			if (channels == 2) {
				objectToInstantiate = "abc_" + "rev4stereo~";
			} else {
				objectToInstantiate = "abc_" + "rev4quadri~";
			}
		} else if (instances) {
			if (instances == 2) {
				objectToInstantiate = "abc_" + "rev4stereo~";
			} else {
				objectToInstantiate = "abc_" + "rev4quadri~";
			}
		} else {
			if (order == 1 || order == 2) {
				objectToInstantiate = "abc_" + "rev4stereo~";
			} else {
				objectToInstantiate = "abc_" + "rev4quadri~";
			}
		}
	} else if (patcherName == 'abc.rissetsbell~' || patcherName == 'abc.rissetsbell') {
		if (patcherName == 'abc.rissetsbell') withUI = true;
		objectToInstantiate = "abc_" + "rissetsbell" + "~";
	} else if (patcherName == 'abc.soundcoat~' || patcherName == 'abc.soundcoat') {
		if (patcherName == 'abc.soundcoat') withUI = true;
		objectToInstantiate = "abc_" + "soundcoat" + "~";
	} else if (patcherName == 'abc.sounddetector~' || patcherName == 'abc.sounddetector') {
		if (patcherName == 'abc.sounddetector') withUI = true;
		objectToInstantiate = "abc_" + "sounddetector" + "~";
	} else if (patcherName == 'abc.soundgrain~' || patcherName == 'abc.soundgrain') {
		if (patcherName == 'abc.soundgrain') withUI = true;
		objectToInstantiate = "abc_" + "soundgrain" + "~";
	} else if (patcherName == 'abc.mc.substractsynth~' || patcherName == 'abc.mc.substractsynth') {
		if (patcherName == 'abc.mc.substractsynth') withUI = true;
		if (channels) {
			objectToInstantiate = "abc_" + "substractsynth" + channels + "~";
			finalchannels = channels;
		} else if (instances) {
			objectToInstantiate = "abc_" + "substractsynth" + instances + "~";
			finalchannels = instances;
		} else {
			objectToInstantiate = "abc_" + "substractsynth" + order + "~";
			finalchannels = order;
		}
	} else if (patcherName == 'abc.polarvariablecircle~' || patcherName == 'abc.polarvariablecircle') {
		if (patcherName == 'abc.polarvariablecircle') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_polarvariablecircle~";
	}
	//Attention :  the order of placing the objects here is for the GUI, to connect them we use the order in which they where added to the patch
	//for(p = 0; p < extraAttributes.length;p++){
	//	objectToInstantiate += " " + extraAttributes[p];
	//}
	addobjectauto(objectToInstantiate, 3);//Object#0(for connection)//the abc object
	//if (stereo) {
	//	wrapper.theObjects[wrapper.numobjects].message('stereo', 1)
	//}
	objectToInstantiate = "inlet";
	addobjectauto(objectToInstantiate, 0);//Object#1(for connection)//
	objectToInstantiate = "t signal l";
	addobjectauto(objectToInstantiate, 1);//Object#2(for connection)//
	connectobject(1, 0, 2, 0);//connect inlet to trigger
	

	objectToInstantiate = "t b l ";
	addobject(objectToInstantiate, 130, 180);//Object#3(for connection)//
	connectobject(2, 1, 3, 0);//connect trigger right to new trigger input
	objectToInstantiate = "message";
	addobject(objectToInstantiate, 130, 210);//Object#4(for connection)//
	

	
	if (inletsoutlets(wrapper.theObjects[0])[0] > 1) {
		objectToInstantiate = "mc.unpack~ " + inletsoutlets(wrapper.theObjects[0])[0];
		addobjectauto(objectToInstantiate, 2);//Object#5(for connection)//
		//connect mc.unpack~ to abc object:
		for (d = 0; d < inletsoutlets(wrapper.theObjects[0])[0]; d++) {
			connectobject(5, d, 0, d);//connect mc.unpack~ to abc object
		}
	} else {//The ABC object only has 1 input (like the encoder~)
		wrapper.numobjects++;
		connectobject(2, 0, 0, 0);//connect trigger(signal) to abc object
	}
	connectobject(2, 0, 5, 0);//connect trigger unpack~
	objectToInstantiate = "outlet";
	addobjectauto(objectToInstantiate, 5);//Object#6(for connection)//
	if (inletsoutlets(wrapper.theObjects[0])[1] > 1) {
		objectToInstantiate = "mc.pack~ " + (inletsoutlets(wrapper.theObjects[0])[1] - 1);
		addobjectauto(objectToInstantiate, 4);//Object#7(for connection)//
		for (d = 0; d < inletsoutlets(wrapper.theObjects[0])[1] - 1; d++) {
			connectobject(0, d, 7, d);//connect abc object to mc.pack~
		}
		connectobject(7, 0, 6, 0);//connect mc.pack~ to outlet
	}

	objectToInstantiate = "route multichannelsignal";
	addobject(objectToInstantiate, 130, 240);//Object#8(for connection)//
	connectobject(3, 0, 4, 0);//connect new trigger to message
	connectobject(3, 1, 4, 1);//connect new trigger to message
	connectobject(4, 0, 8, 0);//connect message to route

	connectobject(8, 1, 0, 0);//connect route to abc object



	//Special cases : Map and Buses:
	if (patcherName == 'abc.hoa.map~' || patcherName == 'abc.hoa.map') {//n buses of 3 channels
		disconnectobject(2, 0, 5, 0);//disconnect the trigger output from the unpack
		objectToInstantiate = "mc.combine~ " + sources;
		addobject(objectToInstantiate, 140, 120);//add mc.combine~//index = 9
		connectobject(2, 0, 9, 0);//connect trigger to mc.combine~
		for (k = 0; k < sources - 1; k++) {//add new inlets
			addobject("inlet", 60 + 40 * k, 60);
			connectobject(10 + k, 0, 9, 1 + k);//connect inlets to mc.combine~
		}
		connectobject(9, 0, 5, 0);//connect combine to unpack~
	}
	if (patcherName == 'abc.mc.busselect~' || patcherName == 'abc.mc.busselect' || patcherName == 'abc.mc.busmult~' || patcherName == 'abc.mc.busmult'|| patcherName == 'abc.mc.busplus~' || patcherName == 'abc.mc.busplus') {//2 buses of n channels
		disconnectobject(2, 0, 5, 0);//disconnect the trigger output from the unpack
		objectToInstantiate = "mc.combine~ " + 2;
		addobject(objectToInstantiate, 140, 120);//add mc.combine~//index = 9
		connectobject(2, 0, 9, 0);//connect trigger to mc.combine~
		addobject("inlet", 100, 60);//add new inlet//index = 10
		connectobject(10, 0, 9, 1);//connect inlets to mc.combine~
		connectobject(9, 0, 5, 0);//connect combine to unpack~
	}
	//-----------------------------------------------------
}

function anything() {
}
function cleanup() {
	while (wrapper.numobjects >= 0) {
		patcher.remove(wrapper.theObjects[wrapper.numobjects]);
		wrapper.numobjects--;
	}
}
function addobject() {//name of object to instantiate,x,y
	wrapper.numobjects++;
	actualobject = patcher.newdefault(arguments[1], arguments[2], arguments[0]);
	actualobject.varname = 'abc_w_' + wrapper.numobjects;
	wrapper.theObjects[wrapper.numobjects] = actualobject;
}
function addobjectauto() {//arguments: object and number of entering position, for the GUI position
	wrapper.numobjects++;
	if (arguments[1] == -1) {
		actualobject = patcher.newdefault(0, 0, arguments[0]);
	} else {
		actualobject = patcher.newdefault(20, 60 + 60 * arguments[1], arguments[0]);
	}
	actualobject.varname = 'abc_w_' + wrapper.numobjects;
	wrapper.theObjects[wrapper.numobjects] = actualobject;
}
function inletsoutlets() {
	return [arguments[0].getboxattr('numinlets'), arguments[0].getboxattr('numoutlets')];
}
function connectobject() {//object, outlet, object, inlet// Need to give the index on the patch(the order in which it was added), not the GUI oindex!
	patcher.connect(wrapper.theObjects[arguments[0]], arguments[1], wrapper.theObjects[arguments[2]], arguments[3]);
}
function disconnectobject() {//object, outlet, object, inlet// Need to give the index on the patch(the order in which it was added), not the GUI oindex!
	patcher.disconnect(wrapper.theObjects[arguments[0]], arguments[1], wrapper.theObjects[arguments[2]], arguments[3]);
}