{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 52.0, 100.0, 1426.0, 848.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.5, 1405.0, 135.0, 22.0 ],
					"text" : "abc.polarvariablecircle~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 333.5, 1378.0, 179.0, 22.0 ],
					"text" : "abc.mc.substractsynth~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 174.5, 1378.0, 145.0, 22.0 ],
					"text" : "abc.mc.substractsynth~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.5, 1378.0, 135.0, 22.0 ],
					"text" : "abc.mc.substractsynth~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 18.5, 1717.0, 98.0, 22.0 ],
					"text" : "abc.soundgrain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.5, 1345.0, 114.0, 22.0 ],
					"text" : "abc.sounddetector~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 18.5, 1687.0, 94.0, 22.0 ],
					"text" : "abc.soundcoat~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 14.5, 1317.0, 92.0, 22.0 ],
					"text" : "abc.rissetsbell~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-188",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 589.0, 1285.0, 85.0, 22.0 ],
					"text" : "abc.rev4~ 987"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 506.0, 1285.0, 72.0, 22.0 ],
					"text" : "abc.rev4~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 413.0, 1285.0, 72.0, 22.0 ],
					"text" : "abc.rev4~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 254.0, 1285.0, 144.0, 22.0 ],
					"text" : "abc.rev4~ @mode stereo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 102.0, 1285.0, 144.0, 22.0 ],
					"text" : "abc.rev4~ @mode quadri"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 1285.0, 62.0, 22.0 ],
					"text" : "abc.rev4~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-179",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 418.0, 1247.0, 221.0, 22.0 ],
					"text" : "abc.mc.pulsedenv2synth~ @channels 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 181.0, 1247.0, 224.0, 22.0 ],
					"text" : "abc.mc.pulsedenv2synth~ @instances 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 1247.0, 148.0, 22.0 ],
					"text" : "abc.mc.pulsedenv2synth~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 413.0, 1211.0, 158.0, 22.0 ],
					"text" : "abc.puckettespaf~ @chan 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 254.0, 1211.0, 150.0, 22.0 ],
					"text" : "abc.puckettespaf~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-174",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 129.0, 1211.0, 116.0, 22.0 ],
					"text" : "abc.puckettespaf~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 1211.0, 106.0, 22.0 ],
					"text" : "abc.puckettespaf~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-169",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 1180.0, 81.0, 22.0 ],
					"text" : "abc.poltocar~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.5, 1622.0, 91.0, 22.0 ],
					"text" : "abc.phasor2pi~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.5, 1655.0, 88.0, 22.0 ],
					"text" : "abc.peakamp~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 18.0, 1147.0, 112.0, 22.0 ],
					"text" : "abc.mc.multinoise~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 461.0, 1147.0, 163.0, 22.0 ],
					"text" : "abc.mc.multinoise~ @chan 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 293.0, 1147.0, 156.0, 22.0 ],
					"text" : "abc.mc.multinoise~ @inst 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 141.0, 1147.0, 122.0, 22.0 ],
					"text" : "abc.mc.multinoise~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.5, 1590.0, 77.0, 22.0 ],
					"text" : "abc.mult2pi~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 18.0, 1120.0, 90.0, 22.0 ],
					"text" : "abc.mc.matrix~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 392.0, 1120.0, 142.0, 22.0 ],
					"text" : "abc.mc.matrix~ @chan 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 244.0, 1120.0, 134.0, 22.0 ],
					"text" : "abc.mc.matrix~ @inst 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 118.0, 1120.0, 100.0, 22.0 ],
					"text" : "abc.mc.matrix~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.5, 1473.0, 83.0, 22.0 ],
					"text" : "abc.linedrive~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 418.0, 1088.0, 164.0, 22.0 ],
					"text" : "abc.mc.linrandenv~ @chan 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 259.0, 1088.0, 157.0, 22.0 ],
					"text" : "abc.mc.linrandenv~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 134.0, 1088.0, 123.0, 22.0 ],
					"text" : "abc.mc.linrandenv~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 18.0, 1088.0, 113.0, 22.0 ],
					"text" : "abc.mc.linrandenv~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-136",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 407.0, 1055.0, 148.0, 22.0 ],
					"text" : "abc.jupiterbank~ @chan 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-135",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 248.0, 1055.0, 141.0, 22.0 ],
					"text" : "abc.jupiterbank~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 123.0, 1055.0, 107.0, 22.0 ],
					"text" : "abc.jupiterbank~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 18.0, 1055.0, 97.0, 22.0 ],
					"text" : "abc.jupiterbank~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 465.5, 1016.0, 136.0, 22.0 ],
					"text" : "abc.mc.harmo~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 259.5, 1016.0, 165.0, 22.0 ],
					"text" : "abc.mc.harmo~ @channels 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.5, 1016.0, 102.0, 22.0 ],
					"text" : "abc.mc.harmo~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.5, 1016.0, 92.0, 22.0 ],
					"text" : "abc.mc.harmo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.5, 1561.0, 90.0, 22.0 ],
					"text" : "abc.generator~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 409.0, 224.0, 162.0, 22.0 ],
					"text" : "abc.hoa.grains~ 5 @mode fx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 293.0, 224.0, 104.0, 22.0 ],
					"text" : "abc.hoa.grains~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 465.5, 983.0, 124.0, 22.0 ],
					"text" : "abc.mc.gain~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 259.5, 983.0, 154.0, 22.0 ],
					"text" : "abc.mc.gain~ @channels 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.5, 983.0, 90.0, 22.0 ],
					"text" : "abc.mc.gain~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.5, 983.0, 80.0, 22.0 ],
					"text" : "abc.mc.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 465.5, 948.0, 144.0, 22.0 ],
					"text" : "abc.mc.freqshift~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 259.5, 948.0, 174.0, 22.0 ],
					"text" : "abc.mc.freqshift~ @channels 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.5, 948.0, 110.0, 22.0 ],
					"text" : "abc.mc.freqshift~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.5, 948.0, 100.0, 22.0 ],
					"text" : "abc.mc.freqshift~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 465.0, 905.0, 180.0, 22.0 ],
					"text" : "abc.mc.flanger~ 6 @instances 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 263.0, 905.0, 178.0, 22.0 ],
					"text" : "abc.mc.flanger~ 6 @channels 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 134.0, 905.0, 104.0, 22.0 ],
					"text" : "abc.mc.flanger~ 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 14.0, 905.0, 94.0, 22.0 ],
					"text" : "abc.mc.flanger~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.5, 1531.0, 99.0, 22.0 ],
					"text" : "abc.envfollower~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.5, 1502.0, 68.0, 22.0 ],
					"text" : "abc.drops~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 466.0, 868.0, 164.0, 22.0 ],
					"text" : "abc.mc.cosrandenv~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 281.0, 868.0, 174.0, 22.0 ],
					"text" : "abc.mc.cosrandenv~ @chan 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 141.0, 868.0, 130.0, 22.0 ],
					"text" : "abc.mc.cosrandenv~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 868.0, 120.0, 22.0 ],
					"text" : "abc.mc.cosrandenv~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 419.0, 833.0, 141.0, 22.0 ],
					"text" : "abc.mc.chopan~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 254.0, 833.0, 148.0, 22.0 ],
					"text" : "abc.mc.chopan~ @chan 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 129.0, 833.0, 107.0, 22.0 ],
					"text" : "abc.mc.chopan~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 14.0, 833.0, 97.0, 22.0 ],
					"text" : "abc.mc.chopan~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 796.0, 81.0, 22.0 ],
					"text" : "abc.cartopol~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 419.0, 759.0, 143.0, 22.0 ],
					"text" : "abc.mc.busplus~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 254.0, 759.0, 150.0, 22.0 ],
					"text" : "abc.mc.busplus~ @chan 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 759.0, 99.0, 22.0 ],
					"text" : "abc.mc.busplus~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 131.0, 759.0, 109.0, 22.0 ],
					"text" : "abc.mc.busplus~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 419.0, 715.0, 144.0, 22.0 ],
					"text" : "abc.mc.busmult~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 254.0, 715.0, 151.0, 22.0 ],
					"text" : "abc.mc.busmult~ @chan 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 715.0, 100.0, 22.0 ],
					"text" : "abc.mc.busmult~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 131.0, 715.0, 110.0, 22.0 ],
					"text" : "abc.mc.busmult~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.5, 1440.0, 98.0, 22.0 ],
					"text" : "abc.audiotester~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 584.0, 670.0, 184.0, 22.0 ],
					"text" : "abc.mc.busselect~ @instances 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 339.0, 670.0, 236.0, 22.0 ],
					"text" : "abc.mc.busselect~ @chan 4 @instances 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 141.0, 670.0, 192.0, 22.0 ],
					"text" : "abc.mc.busselect~ 5 @channels 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 670.0, 118.0, 22.0 ],
					"text" : "abc.mc.busselect~ 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 128.0, 629.0, 116.0, 22.0 ],
					"text" : "abc.mc.addsynth~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 258.0, 629.0, 182.0, 22.0 ],
					"text" : "abc.mc.addsynth~ @instances 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 629.0, 106.0, 22.0 ],
					"text" : "abc.mc.addsynth~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 121.0, 592.0, 186.0, 22.0 ],
					"text" : "abc.hoa.wider~ 6 @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 592.0, 100.0, 22.0 ],
					"text" : "abc.hoa.wider~ 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 261.0, 555.0, 160.0, 22.0 ],
					"text" : "abc.vbap~ 4 @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 555.0, 235.0, 22.0 ],
					"text" : "abc.vbap~ 5 @dimensions 2 @speakers 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 510.0, 148.0, 22.0 ],
					"text" : "abc.hoa.stereodecoder~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 472.0, 186.0, 22.0 ],
					"text" : "abc.trajectories~ @mode random"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 758.0, 472.0, 188.0, 22.0 ],
					"text" : "abc.trajectories~ @mode squarez"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 556.0, 472.0, 190.0, 22.0 ],
					"text" : "abc.trajectories~ @mode squareZ"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 398.0, 472.0, 153.0, 22.0 ],
					"text" : "abc.trajectories~ @mode Z"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 207.0, 472.0, 182.0, 22.0 ],
					"text" : "abc.trajectories~ @mode square"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 125.0, 429.0, 104.0, 22.0 ],
					"text" : "abc.hoa.scope~ 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 429.0, 94.0, 22.0 ],
					"text" : "abc.hoa.scope~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 121.0, 392.0, 188.0, 22.0 ],
					"text" : "abc.hoa.rotate~ 4 @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 392.0, 92.0, 22.0 ],
					"text" : "abc.hoa.rotate~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 350.0, 91.0, 22.0 ],
					"text" : "abc.hoa.optim~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 243.0, 350.0, 187.0, 22.0 ],
					"text" : "abc.hoa.optim~ 5 @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 125.0, 350.0, 101.0, 22.0 ],
					"text" : "abc.hoa.optim~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 113.0, 305.0, 103.0, 22.0 ],
					"text" : "abc.hoa.mirror~ 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 305.0, 93.0, 22.0 ],
					"text" : "abc.hoa.mirror~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 302.0, 261.0, 184.0, 22.0 ],
					"text" : "abc.hoa.delays~ 5 @mode chain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 114.0, 261.0, 174.0, 22.0 ],
					"text" : "abc.hoa.delays~ 3 @mode syn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 261.0, 96.0, 22.0 ],
					"text" : "abc.hoa.delays~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 224.0, 258.0, 22.0 ],
					"text" : "abc.hoa.grains~ 5 @mode syn @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 180.0, 269.0, 22.0 ],
					"text" : "abc.hoa.ringmod~ 5 @dimensions 2 @mode syn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 145.0, 295.0, 22.0 ],
					"text" : "abc.hoa.decorrelation~ 5 @dimensions 2 @mode syn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 96.0, 249.0, 22.0 ],
					"text" : "abc.hoa.map~ 3 @dimensions 2 @sources 6",
					"varname" : "abc.hoa.decoder~[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 19.0, 269.0, 22.0 ],
					"text" : "abc.hoa.encoder~ 3 @dimensions 2 @sources 5",
					"varname" : "abc.hoa.decoder~[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 61.0, 341.0, 22.0 ],
					"text" : "abc.hoa.decoder~ 5 @speakers 12 @dimensions 2 @stereo 1",
					"varname" : "abc.hoa.decoder~[1]"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "abc.audiotester~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.cartopol~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.drops~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.envfollower~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.generator~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.decoder~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.decorrelation~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.delays~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.encoder~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.grains~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.map~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.mirror~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.optim~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.ringmod~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.rotate~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.scope~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.stereodecoder~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.wider~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.jupiterbank~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.linedrive~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.addsynth~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.busmult~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.busplus~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.busselect~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.chopan~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.cosrandenv~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.flanger~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.freqshift~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.gain~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.harmo~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.linrandenv~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.matrix~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.multinoise~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.pulsedenv2synth~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.substractsynth~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mult2pi~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.peakamp~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.phasor2pi~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.polarvariablecircle~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.poltocar~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.puckettespaf~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.rev4~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.rissetsbell~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.soundcoat~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.sounddetector~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.soundgrain~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.trajectories~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.vbap~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX/wrapping_abstractions",
				"patcherrelativepath" : "./wrapping_abstractions",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc_2d_decoder5_12~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_map3_6~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_mirror1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_mirror6~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_multiencoder3_5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_optim1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_optim5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_polarvariablecircle~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_randomtrajectory~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_rotate1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_rotate4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_scope1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_scope3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_squareandztrajectory~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_squaretrajectory~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_stereodecoder5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_syn_decorrelation5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_syn_delay3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_syn_grain5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_syn_ringmod5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_vbap4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_vbap8~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_wider6~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_ztrajectory~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_addsynth1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_addsynth3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_addsynth5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_audiotester~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busmult1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busmult3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busmult4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busmult7~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busplus1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busplus3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busplus4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busplus7~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busselect3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busselect4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busselect5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_busselect6~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_cartopol~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_chopan1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_chopan3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_chopan4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_chopan7~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_cosrandenv1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_cosrandenv3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_cosrandenv4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_cosrandenv7~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_delay1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_delaychain5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_drops~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_envfollower~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_flanger1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_flanger5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_flanger6~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_flanger8~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_freqshift1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_freqshift2~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_freqshift3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_freqshift4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_gain1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_gain2~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_gain3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_gain4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_generator~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_grain5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_harmo1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_harmo2~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_harmo3~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_harmo4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_jupiterbank2~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_jupiterbank~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_linrandenv1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_linrandenv2~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_matrix2~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_matrix4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_matrix5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_matrix6~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_mult2pi~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_multinoise1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_multinoise4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_multinoise5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_multinoise6~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_peakamp~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_phasor2pi~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_poltocar~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_puckettespaf2~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_puckettespaf~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_pulsedenv2synth1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_pulsedenv2synth4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_pulsedenv2synth7~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_rev4quadri~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_rev4stereo~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_rissetsbell~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_soundcoat~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_sounddetector~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_soundgrain~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_substractsynth1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_substractsynth4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_substractsynth7~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_wrp.js",
				"bootpath" : "~/Documents/Max 8/Packages/abclib 4/Wrapping_MAX",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
