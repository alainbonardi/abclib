// -----------------
// abc_wrp.js
// -----------------
// Automatically generate Maxpat that finds the right abc_lib objet depending on the amount of desired channels
// abclibrary | Alain Bonardi, Paul Goutmann, David Fierro & Adrien Zanni © 2019 - 2024 CICM | University Paris 8

var wrapper = wrapper || {};
wrapper.numobjects = -1;
wrapper.theObjects = new Array(100);
var objectToInstantiate = "";
var actualobject;
var withUI = false;
var abcAttributes = "";

patching();

function patching() {
	//Constants:
	var baseAmbisonicOrder = 1;
	var maxAmbisonicOrder = 7;
	var maxSpeakers = 16;
	var maxMCinstances = 16;
	var maxMAPsources = 8;
	var maxMEncoderSources = 8;
	//------------------------
	var controlData = true;
	var signalData = true;
	var HcontroldataPos = 20;//Horizontal position of the control data input, in order not to put it so far to the left, but to the right position at the end of the other inputs.
	var speakersSettedUp = false;
	var addCARTOPOL = false;//If true it will add a cartopol before the output, created to convert trajectories outputs into polar.
	var patcherName = this.patcher.name;//name of 'abc' object
	var args = jsarguments;
	var order = baseAmbisonicOrder;//We will save in 'order' every first attribute, for HOA objectes is the order, for the others is the first parameter, ex. channels etc...
	var isHOA = (new RegExp("abc.hoa", "i").test(patcherName));//||(new RegExp("abc_3d", "i").test(jsobjectname));
	var isMC = (new RegExp("abc.mc", "i").test(patcherName));

	if (typeof args[1] === 'number' && args[1] != 0) {
		order = args[1];//Max puts a zero when there are no arguments
		if (order > maxAmbisonicOrder && isHOA == 1) {//We check if is an HOA object
			error("abcWrapper => ", "The maximum HOA order is", maxAmbisonicOrder, ". Replacing", order, "by", maxAmbisonicOrder, ".");
			order = maxAmbisonicOrder;
		}
	}

	var speakers;
	var dimensions = "2d";
	var sources = 1;//To transform the encoder to multiencoder
	var mode = "fx";//fx or syn
	var finalchannels;//variable to save the number of channels of the MC objects, if the user inputs instances or order instead of channels it will still work and we will save the value on this variable.
	for (var i = 1; i < args.length; i++) {
		if (args[i] == "@speakers" || args[i] == "@spk") {
			speakers = args[i + 1];
			speakersSettedUp = true;
			i++;
		} else if (args[i] == "@dimensions" || args[i] == "@dim") {
			if (args[i + 1] == 3) {
				dimensions = "3d";
			} else if (args[i + 1] == 2) {
				dimensions = "2d";
			} else {
				error("abcWrapper => ", "Only 2d and 3d objects are allowed. Replacing", args[i + 1], "dimensions", "by 2 dimensions.");
				dimensions = "2d";
			}
			i++;
		} else if (args[i] == "@sources" || args[i] == "@src") {
			sources = args[i + 1];
			i++;
		} else if (args[i] == "@mode" || args[i] == "@mod") {
			mode = args[i + 1];
			i++;
		} else if (args[i] == "@instances" || args[i] == "@inst") {
			var instances = args[i + 1];
			i++;
		} else if (args[i] == "@channels" || args[i] == "@chan" || args[i] == "@chans" || args[i] == "@ch") {
			var channels = args[i + 1];
			i++;
		} else if (typeof args[i] !== 'number') {
			abcAttributes += " " + args[i] + " " + args[i + 1];
			i++;
		}
	}
	//Validation des maximums:
	if (speakers > maxSpeakers) {
		error("abcWrapper => ", "The maximum number of speakers is", maxSpeakers, ". Replacing", speakers, "by", maxSpeakers, ".");
		speakers = maxSpeakers;
	}
	if (instances > maxMCinstances) {
		error("abcWrapper => ", "The maximum number of MC instances is", maxMCinstances, ". Replacing", instances, "by", maxMCinstances, ".");
		instances = maxMCinstances;
	}
	if (channels > maxMCinstances) {
		error("abcWrapper => ", "The maximum number of MC channels is", maxMCinstances, ". Replacing", channels, "by", maxMCinstances, ".");
		channels = maxMCinstances;
	}

	//List of ABC delicious objects:
	if (patcherName == 'abc.hoa.decoder~' || patcherName == 'abc.hoa.decoder') {
		if (patcherName == 'abc.hoa.decoder') withUI = true;
		if (speakersSettedUp == false) speakers = order * 2 + 2;

		objectToInstantiate = "abc_" + dimensions + "_decoder" + order + "_" + speakers + "~";
	} else if (patcherName == 'abc.hoa.binaural~' || patcherName == 'abc.hoa.binaural') {
		if (patcherName == 'abc.hoa.binaural') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_binaural" + order + "~";
	} else if (patcherName == 'abc.hoa.encoder~' || patcherName == 'abc.hoa.encoder') {
		if (patcherName == 'abc.hoa.encoder') withUI = true;
		if (sources > maxMEncoderSources) {
			error("abcWrapper => ", "The maximum number sources for the 'multiencoder' object is", maxMEncoderSources, ". Replacing", sources, "by", maxMEncoderSources, ".");
			sources = maxMEncoderSources;
		}
		objectToInstantiate = "abc_" + dimensions + "_multiencoder" + order + "_" + sources + "~";
		
	} else if (patcherName == 'abc.hoa.map~' || patcherName == 'abc.hoa.map') {
		if (patcherName == 'abc.hoa.map') withUI = true;
		if (sources > maxMAPsources) {
			error("abcWrapper => ", "The maximum number sources for the 'map' object is", maxMAPsources, ". Replacing", sources, "by", maxMAPsources, ".");
			sources = maxMAPsources;
		}
		objectToInstantiate = "abc_" + dimensions + "_map" + order + "_" + sources + "~";
		controlData = false;
	} else if (patcherName == 'abc.hoa.decorrelation~' || patcherName == 'abc.hoa.decorrelation') {
		if (patcherName == 'abc.hoa.decorrelation') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_" + mode + "_decorrelation" + order + "~";
	} else if (patcherName == 'abc.hoa.ringmod~' || patcherName == 'abc.hoa.ringmod') {
		if (patcherName == 'abc.hoa.ringmod') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_" + mode + "_ringmod" + order + "~";
	} else if (patcherName == 'abc.mc.grain~' || patcherName == 'abc.hoa.grain') {
		if (patcherName == 'abc.mc.grain') withUI = true;
		objectToInstantiate = "abc_" + "grain" + order + "~";
	} else if (patcherName == 'abc.hoa.grain~' || patcherName == 'abc.hoa.grain') {
		if (patcherName == 'abc.hoa.grain') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_" + mode + "_grain" + order + "~";
	} else if (patcherName == 'abc.hoa.delay~' || patcherName == 'abc.hoa.delay') {
		if (patcherName == 'abc.hoa.delay') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_" + mode + "_delay" + order + "~";
	} else if (patcherName == 'abc.mc.delay~' || patcherName == 'abc.mc.delay') {
		if (patcherName == 'abc.mc.delay') withUI = true;
		objectToInstantiate = "abc_" + "delay" + order + "~";
	} else if (patcherName == 'abc.delaychain~' || patcherName == 'abc.delaychain') {
		if (patcherName == 'abc.delaychain') withUI = true;
		if (order == 1) order = 2;
		objectToInstantiate = "abc_delaychain" + order + "~";
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
			addCARTOPOL = true;
		} else if (mode == "square") {
			objectToInstantiate = "abc_" + dimensions + "_squaretrajectory" + "~";
			addCARTOPOL = true;
		} else if (mode == "Z") {
			objectToInstantiate = "abc_" + dimensions + "_ztrajectory" + "~";
			addCARTOPOL = true;
		} else if (mode == "squareZ" || mode == "squarez") {
			objectToInstantiate = "abc_" + dimensions + "_squareandztrajectory" + "~";
			addCARTOPOL = true;
		} else if (mode == "circular") {
			objectToInstantiate = "abc_" + dimensions + "_polarvariablecircle~"
		} else {
			objectToInstantiate = "abc_" + dimensions + "_randomtrajectory" + "~";
			addCARTOPOL = true;
			error("abcWrapper => ", "Can not instantiate the object ", patcherName, "with the mode:", mode, ". Instead, the object:", objectToInstantiate, "has been instantiated.");
		}
		signalData = false;
	} else if (patcherName == 'abc.hoa.stereoencoder~' || patcherName == 'abc.hoa.stereoencoder') {
		if (patcherName == 'abc.hoa.stereoencoder') withUI = true;
		objectToInstantiate = "abc_" + dimensions + "_stereoencoder" + order + "~";
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
		signalData = false;
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
		signalData = false;
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
		controlData = false;
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
		controlData = false;
	} else if (patcherName == 'abc.cartopol~' || patcherName == 'abc.cartopol') {
		if (patcherName == 'abc.cartopol') withUI = true;
		objectToInstantiate = "abc_" + "cartopol" + "~";
		controlData = false;
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
	} else if (patcherName == 'abc.mc.randenv~' || patcherName == 'abc.mc.randenv') {
		if (patcherName == 'abc.mc.randenv') withUI = true;
		if (channels) {
			finalchannels = channels;
		} else if (instances) {
			finalchannels = instances;
		} else {
			finalchannels = order;
		}
		if (mode == "fx" || mode == "cosinus" || mode == "cos") {
			objectToInstantiate = "abc_" + "cosrandenv" + finalchannels + "~";
		} else if (mode == "lin" || mode == "linear" || mode == "line") {
			objectToInstantiate = "abc_" + "linrandenv" + finalchannels + "~";
		} else {
			objectToInstantiate = "abc_" + "cosrandenv" + finalchannels + "~";
			error("abcWrapper => Can not instantiate the object ", patcherName, "with the mode:", mode, ". Instead, the object:", objectToInstantiate, "has been instantiated.");
		}
	} else if (patcherName == 'abc.drops~' || patcherName == 'abc.drops') {
		if (patcherName == 'abc.drops') withUI = true;
		objectToInstantiate = "abc_" + "drops" + "~";
		signalData = false;
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
		signalData = false;
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
		if (mode == 1 || mode == "fx") {
			objectToInstantiate = "abc_jupiterbank~";
		} else if (mode == 2) {
			objectToInstantiate = "abc_jupiterbank2~";
		} else {
			objectToInstantiate = "abc_jupiterbank~";
			error("abcWrapper => Can not instantiate the object ", patcherName, "with the mode:", mode, ". Instead, the object:", objectToInstantiate, "has been instantiated.");
		}
	} else if (patcherName == 'abc.linedrive~' || patcherName == 'abc.linedrive') {
		if (patcherName == 'abc.linedrive') withUI = true;
		objectToInstantiate = "abc_linedrive~";
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
	} else if (patcherName == 'abc.mult2pi~' || patcherName == 'abc.mult2pi') {
		if (patcherName == 'abc.mult2pi') withUI = true;
		objectToInstantiate = "abc_" + "mult2pi" + "~";
		controlData = false;
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
		signalData = false;
	} else if (patcherName == 'abc.peakamp~' || patcherName == 'abc.peakamp') {
		if (patcherName == 'abc.peakamp') withUI = true;
		objectToInstantiate = "abc_" + "peakamp" + "~";
	} else if (patcherName == 'abc.phasor2pi~' || patcherName == 'abc.phasor2pi') {
		if (patcherName == 'abc.phasor2pi') withUI = true;
		objectToInstantiate = "abc_" + "phasor2pi" + "~";
	} else if (patcherName == 'abc.poltocar~' || patcherName == 'abc.poltocar') {
		if (patcherName == 'abc.poltocar') withUI = true;
		objectToInstantiate = "abc_" + "poltocar" + "~";
		controlData = false;
	} else if (patcherName == 'abc.puckettespaf~' || patcherName == 'abc.puckettespaf') {
		if (patcherName == 'abc.puckettespaf') withUI = true;
		if (mode == 1 || mode == "fx") {
			objectToInstantiate = "abc_" + "puckettespaf~";
		} else if (mode == 2) {
			objectToInstantiate = "abc_" + "puckettespaf2~";
		} else {
			objectToInstantiate = "abc_" + "puckettespaf~";
			error("abcWrapper => Can not instantiate the object ", patcherName, "with the mode:", mode, ". Instead, the object:", objectToInstantiate, "has been instantiated.");
		}
		finalchannels = channels;
		signalData = false;
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
		signalData = false;
	} else if (patcherName == 'abc.rev4~' || patcherName == 'abc.rev4') {
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
		} else if (order > 0 && order <= 4) {
			if (order == 1 || order == 2) {
				objectToInstantiate = "abc_" + "rev4stereo~";
			} else {
				objectToInstantiate = "abc_" + "rev4quadri~";
			}
		} else {
			objectToInstantiate = "abc_" + "rev4stereo~";
			error("abcWrapper => Can not instantiate the object ", patcherName, ". Instead, the object:", objectToInstantiate, "has been instantiated.");
		}
	} else if (patcherName == 'abc.vector~' || patcherName == 'abc.vector') {
		if (patcherName == 'abc.vector') withUI = true;
		if (speakersSettedUp == true && speakers > 3 && speakers <= 16) {
			objectToInstantiate = "abc_" + dimensions + "_vectors" + speakers + "~";
		}
		else if (order > 3 && order <= 16)  {
			objectToInstantiate = "abc_" + dimensions + "_vectors" + order + "~";
		} else if (speakersSettedUp == false) {
			speakers = 4;
			objectToInstantiate = "abc_" + dimensions + "_vectors" + speakers + "~";
		}
	} else if (patcherName == 'abc.rissetsbell~' || patcherName == 'abc.rissetsbell') {
		if (patcherName == 'abc.rissetsbell') withUI = true;
		objectToInstantiate = "abc_" + "rissetsbell" + "~";
	} else if (patcherName == 'abc.soundcoat~' || patcherName == 'abc.soundcoat') {
		if (patcherName == 'abc.soundcoat') withUI = true;
		objectToInstantiate = "abc_" + "soundcoat" + "~";
		signalData = false;
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
	}

	//----------Alert : Don't modify this abstraction
	var alertMessage = patcher.newdefault(200, 100, "comment");
	alertMessage.message('patching_rect', 200, 100, 375, 160);
	alertMessage.message('fontsize', 20);
	alertMessage.message('fontface', "bold");
	alertMessage.message('textjustification', 0);
	alertMessage.message('set', "DO NOT MODIFY THIS ABSTRACTION. \nThis abstraction serves as a wrapper for the objects of the 'abc' library. It automatically selects the correct object and sets the appropriate inputs and outputs. Any modification will cause it to malfunction.");
	//----------

	objectToInstantiate += abcAttributes;
	var abcObject = patcher.newdefault(20, 240, objectToInstantiate);//x,y,name of object


	if (signalData) {
		var inlet1 = patcher.newdefault(20, 60, "inlet");
		if (inletsoutlets(abcObject)[0] > 1) {
			inlet1.message('comment','(multi-channel signal) Input');
			//post("this are the inputs of the abc object: ",inletsoutlets(abcObject)[0]);
			objectToInstantiate = "mc.unpack~ " + inletsoutlets(abcObject)[0];
			var unpacker = patcher.newdefault(20, 180, objectToInstantiate);
			connectobject(inlet1, 0, unpacker, 0);
			for (d = 0; d < inletsoutlets(abcObject)[0]; d++) {
				connectobject(unpacker, d, abcObject, d);//connect mc.unpack~ to abc object
			}
		} else {
			connectobject(inlet1, 0, abcObject, 0);
			inlet1.message('comment','(signal) Input');
		}
		HcontroldataPos += 40;
	}


	//Special cases : Map and Buses:
	if (patcherName == 'abc.hoa.map~' || patcherName == 'abc.hoa.map') {//n buses of 3 channels
		disconnectobject(inlet1, 0, unpacker, 0);
		objectToInstantiate = "mc.combine~ " + sources;
		var combine = patcher.newdefault(20, 120, objectToInstantiate);
		connectobject(inlet1, 0, combine, 0);
		var mapInlet;
		for (k = 0; k < sources - 1; k++) {//add new inlets
			mapInlet = patcher.newdefault(60 + 40 * k, 60, "inlet");
			HcontroldataPos += 40;
			connectobject(mapInlet, 0, combine, 1 + k);//connect inlets to mc.combine~
			mapInlet.message('comment','(multi-channel signal) Input');
		}
		connectobject(combine, 0, unpacker, 0);//connect combine to abcObject
	} else if (patcherName == 'abc.mc.busselect~' || patcherName == 'abc.mc.busselect' || patcherName == 'abc.mc.busmult~' || patcherName == 'abc.mc.busmult' || patcherName == 'abc.mc.busplus~' || patcherName == 'abc.mc.busplus') {//2 buses of n channels
		disconnectobject(inlet1, 0, unpacker, 0);
		objectToInstantiate = "mc.combine~ " + 2;
		var combine = patcher.newdefault(20, 120, objectToInstantiate);
		connectobject(inlet1, 0, combine, 0);
		var businlet = patcher.newdefault(120, 60, "inlet");
		businlet.message('comment','(multi-channel signal) Input');
		connectobject(businlet, 0, combine, 1);//connect inlets to mc.combine~
		connectobject(combine, 0, unpacker, 0);//connect combine to abcObject
		HcontroldataPos = 160;
	}

	//-----------------------------------------------------
	if (controlData) {
		var inlet2 = patcher.newdefault(HcontroldataPos, 60, "inlet");
		inlet2.message('comment','(control) Input');
		connectobject(inlet2, 0, abcObject, 0);
	}
	//-----------------------------------------------------

	var outlet = patcher.newdefault(20, 420, "outlet");
	outlet.message('comment','(multi-channel signal) Output');

	//Because of the compilation pipeline binaural objects can't be compiled with RNBO
	//Instead of that we compile it directly with faust command but there are 1 outlet more than the other objects
	if (patcherName = "abc.hoa.binaural~") {
		objectToInstantiate = "mc.pack~ " + (inletsoutlets(abcObject)[1]-1);
		var packer = patcher.newdefault(20, 360, objectToInstantiate);

		for (d = 0; d < (inletsoutlets(abcObject)[1]-1); d++) {
			connectobject(abcObject, d, packer, d);//connect abc object to mc.pack~
		}
		connectobject(packer, 0, outlet, 0);//connect mc.pack~ to outlet
	} else if (inletsoutlets(abcObject)[1] > 1) {
		objectToInstantiate = "mc.pack~ " + (inletsoutlets(abcObject)[1]);
		var packer = patcher.newdefault(20, 360, objectToInstantiate);
		//addobjectauto(objectToInstantiate, 4);

		if (addCARTOPOL) {
			var cartopol = patcher.newdefault(20, 320, "abc_cartopol~");
			connectobject(abcObject, 0, cartopol, 0);
			connectobject(abcObject, 1, cartopol, 1);
			connectobject(cartopol, 0, packer, 0);
			connectobject(cartopol, 1, packer, 1);
		} else {
			for (d = 0; d < inletsoutlets(abcObject)[1]; d++) {
				connectobject(abcObject, d, packer, d);//connect abc object to mc.pack~
			}
		}
		connectobject(packer, 0, outlet, 0);//connect mc.pack~ to outlet
	} else {//The ABC object only has 1 output
		connectobject(abcObject, 0, outlet, 0);
	}

}

function anything() {
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
	patcher.connect(arguments[0], arguments[1], arguments[2], arguments[3]);
}
function disconnectobject() {//object, outlet, object, inlet// Need to give the index on the patch(the order in which it was added), not the GUI oindex!
	patcher.disconnect(arguments[0], arguments[1], arguments[2], arguments[3]);
}