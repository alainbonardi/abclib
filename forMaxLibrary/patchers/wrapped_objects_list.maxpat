{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 100.0, 1037.0, 848.0 ],
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
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 563.0, 61.0, 115.0, 22.0 ],
					"text" : "abc.hoa.decoder~ 3",
					"varname" : "abc.hoa.decoder~[7]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 366.0, 61.0, 189.0, 22.0 ],
					"text" : "abc.hoa.decoder~ 7 @speakers 5",
					"varname" : "abc.hoa.decoder~[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 430.0, 677.333353519439697, 74.0, 22.0 ],
					"text" : "abc.vbap~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 1066.0, 1233.027420043945312, 111.0, 22.0 ],
					"text" : "abc.mc.randenv~ 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-274",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 308.0, 1402.0, 162.0, 22.0 ],
					"text" : "abc.puckettespaf~ @mode 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-273",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 137.280418932437897, 1398.66670835018158, 162.0, 22.0 ],
					"text" : "abc.puckettespaf~ @mode 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-271",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 20.266667187213898, 1182.0, 152.0, 22.0 ],
					"text" : "abc.jupiterbank~ @mode 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-270",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 664.000017404556274, 992.800014793872833, 104.0, 22.0 ],
					"text" : "abc.mc.flanger~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 964.347794473171234, 572.000017046928406, 184.0, 22.0 ],
					"text" : "abc.trajectories~ @mode circular"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-394",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 862.385249137878418, 42.935777902603149, 614.0, 20.0 ],
					"text" : "https://docs.google.com/spreadsheets/d/1iKLGG1CClBnb5bsfqmoTrEjBtmBlW3N_2gJUDnfuePI/edit?usp=sharing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-390",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 656.100010514259338, 96.0, 249.0, 22.0 ],
					"text" : "abc.hoa.map~ 5 @dimensions 2 @sources 8",
					"varname" : "abc.hoa.decoder~[12]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-372",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 297.166674375534058, 19.0, 105.0, 22.0 ],
					"text" : "abc.hoa.encoder~",
					"varname" : "abc.hoa.decoder~[10]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-187",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 850.376689493656158, 1233.027420043945312, 200.0, 22.0 ],
					"text" : "abc.mc.randenv~ 4 @mode cosinus"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-189",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 638.450101673603058, 1233.027420043945312, 179.0, 22.0 ],
					"text" : "abc.mc.randenv~ @mode linear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-186",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 443.954705059528351, 1233.027420043945312, 178.0, 22.0 ],
					"text" : "abc.mc.randenv~ 6 @mode cos"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-148",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 231.666670918464661, 412.000012278556824, 103.0, 22.0 ],
					"text" : "abc.hoa.mirror~ 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 932.339373826980591, 792.000023603439331, 118.0, 22.0 ],
					"text" : "abc.mc.busselect~ 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 783.715533018112183, 792.000023603439331, 125.0, 22.0 ],
					"text" : "abc.mc.busselect~ 16"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 642.0, 148.0, 22.0 ],
					"text" : "abc.hoa.stereoencoder~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 18.266667187213898, 1270.642095804214478, 83.0, 22.0 ],
					"text" : "abc.linedrive~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 384.000011444091797, 96.0, 249.0, 22.0 ],
					"text" : "abc.hoa.map~ 7 @dimensions 2 @sources 8",
					"varname" : "abc.hoa.decoder~[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 142.0, 372.66667777299881, 106.0, 22.0 ],
					"text" : "abc.delaychain~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 372.66667777299881, 96.0, 22.0 ],
					"text" : "abc.delaychain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 120.5, 215.0, 94.0, 22.0 ],
					"text" : "abc.mc.grain~ 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 15.0, 215.0, 84.0, 22.0 ],
					"text" : "abc.mc.grain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 622.018296718597412, 20.0, 243.0, 20.0 ],
					"text" : "Lien pour la description des attributes (p. 3):"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 862.385249137878418, 20.0, 618.0, 20.0 ],
					"text" : "https://docs.google.com/document/d/1hBVTFcn5mUX4_XgWBO3QcqAbz50E3YbAFDxnsyz7JJg/edit?usp=sharing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 862.385249137878418, 65.871555805206299, 413.0, 20.0 ],
					"text" : "Order of preference of attributes for MC objects : Channels, instances, order"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.666670441627502, 96.0, 249.0, 22.0 ],
					"text" : "abc.hoa.map~ 3 @dimensions 2 @sources 5",
					"varname" : "abc.hoa.decoder~[4]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 108.0, 338.0, 174.0, 22.0 ],
					"text" : "abc.mc.delay~ 1 @mode chain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 16.0, 338.0, 86.0, 22.0 ],
					"text" : "abc.mc.delay~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-204",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 333.333343267440796, 1566.666713356971741, 179.0, 22.0 ],
					"text" : "abc.mc.substractsynth~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-203",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 173.333338499069214, 1566.666713356971741, 145.0, 22.0 ],
					"text" : "abc.mc.substractsynth~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1566.666713356971741, 135.0, 22.0 ],
					"text" : "abc.mc.substractsynth~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-198",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.333333849906921, 1905.333390116691589, 98.0, 22.0 ],
					"text" : "abc.soundgrain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-197",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 14.666667103767395, 1533.333379030227661, 114.0, 22.0 ],
					"text" : "abc.sounddetector~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 17.333333849906921, 1874.666722536087036, 94.0, 22.0 ],
					"text" : "abc.soundcoat~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-192",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 13.333333730697632, 1505.333378195762634, 92.0, 22.0 ],
					"text" : "abc.rissetsbell~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-185",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 505.333348393440247, 1473.333377242088318, 72.0, 22.0 ],
					"text" : "abc.rev4~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 413.333345651626587, 1473.333377242088318, 72.0, 22.0 ],
					"text" : "abc.rev4~ 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 253.333340883255005, 1473.333377242088318, 144.0, 22.0 ],
					"text" : "abc.rev4~ @mode stereo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 101.333336353302002, 1473.333377242088318, 144.0, 22.0 ],
					"text" : "abc.rev4~ @mode quadri"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 14.666667103767395, 1473.333377242088318, 62.0, 22.0 ],
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
					"patching_rect" : [ 417.333345770835876, 1434.666709423065186, 221.0, 22.0 ],
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
					"patching_rect" : [ 181.333338737487793, 1434.666709423065186, 224.0, 22.0 ],
					"text" : "abc.mc.pulsedenv2synth~ @instances 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-177",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1434.666709423065186, 148.0, 22.0 ],
					"text" : "abc.mc.pulsedenv2synth~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-175",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1398.66670835018158, 106.0, 22.0 ],
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
					"patching_rect" : [ 14.666667103767395, 1369.33337414264679, 81.0, 22.0 ],
					"text" : "abc.poltocar~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1810.666720628738403, 91.0, 22.0 ],
					"text" : "abc.phasor2pi~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1842.66672158241272, 88.0, 22.0 ],
					"text" : "abc.peakamp~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-161",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 17.333333849906921, 1334.666706442832947, 112.0, 22.0 ],
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
					"patching_rect" : [ 461.333347082138062, 1334.666706442832947, 163.0, 22.0 ],
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
					"patching_rect" : [ 293.3333420753479, 1334.666706442832947, 156.0, 22.0 ],
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
					"patching_rect" : [ 141.333337545394897, 1334.666706442832947, 122.0, 22.0 ],
					"text" : "abc.mc.multinoise~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1778.666719675064087, 77.0, 22.0 ],
					"text" : "abc.mult2pi~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-154",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 17.333333849906921, 1309.333372354507446, 90.0, 22.0 ],
					"text" : "abc.mc.matrix~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 390.666678309440613, 1309.333372354507446, 142.0, 22.0 ],
					"text" : "abc.mc.matrix~ @chan 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 242.666673898696899, 1309.333372354507446, 134.0, 22.0 ],
					"text" : "abc.mc.matrix~ @inst 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 117.33333683013916, 1309.333372354507446, 100.0, 22.0 ],
					"text" : "abc.mc.matrix~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1661.333382844924927, 83.0, 22.0 ],
					"text" : "abc.linedrive~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 259.55105072259903, 1233.027420043945312, 172.0, 22.0 ],
					"text" : "abc.mc.randenv~ 4 @mode lin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 134.780418932437897, 1233.027420043945312, 111.0, 22.0 ],
					"text" : "abc.mc.randenv~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 18.266667187213898, 1233.027420043945312, 101.0, 22.0 ],
					"text" : "abc.mc.randenv~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 20.266667187213898, 1150.0, 152.0, 22.0 ],
					"text" : "abc.jupiterbank~ @mode 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-127",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 466.666673839092255, 1104.800016462802887, 136.0, 22.0 ],
					"text" : "abc.mc.harmo~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 260.266670763492584, 1104.800016462802887, 165.0, 22.0 ],
					"text" : "abc.mc.harmo~ @channels 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.666668772697449, 1104.800016462802887, 102.0, 22.0 ],
					"text" : "abc.mc.harmo~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-130",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 16.266667127609253, 1104.800016462802887, 92.0, 22.0 ],
					"text" : "abc.mc.harmo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-125",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1749.333385467529297, 90.0, 22.0 ],
					"text" : "abc.generator~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-121",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 409.0, 258.0, 156.0, 22.0 ],
					"text" : "abc.hoa.grain~ 4 @mode fx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 293.0, 258.0, 98.0, 22.0 ],
					"text" : "abc.hoa.grain~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 466.666673839092255, 1070.400015950202942, 124.0, 22.0 ],
					"text" : "abc.mc.gain~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 260.266670763492584, 1070.400015950202942, 154.0, 22.0 ],
					"text" : "abc.mc.gain~ @channels 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.666668772697449, 1070.400015950202942, 90.0, 22.0 ],
					"text" : "abc.mc.gain~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 16.266667127609253, 1070.400015950202942, 80.0, 22.0 ],
					"text" : "abc.mc.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 466.666673839092255, 1036.800015449523926, 144.0, 22.0 ],
					"text" : "abc.mc.freqshift~ @inst 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 260.266670763492584, 1036.800015449523926, 174.0, 22.0 ],
					"text" : "abc.mc.freqshift~ @channels 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.666668772697449, 1036.800015449523926, 110.0, 22.0 ],
					"text" : "abc.mc.freqshift~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 16.266667127609253, 1036.800015449523926, 100.0, 22.0 ],
					"text" : "abc.mc.freqshift~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 466.666673839092255, 992.800014793872833, 180.0, 22.0 ],
					"text" : "abc.mc.flanger~ 6 @instances 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 264.266670823097229, 992.800014793872833, 178.0, 22.0 ],
					"text" : "abc.mc.flanger~ 6 @channels 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 134.666668891906738, 992.800014793872833, 104.0, 22.0 ],
					"text" : "abc.mc.flanger~ 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-105",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 992.800014793872833, 94.0, 22.0 ],
					"text" : "abc.mc.flanger~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1718.666717886924744, 99.0, 22.0 ],
					"text" : "abc.envfollower~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 14.666667103767395, 1690.666717052459717, 68.0, 22.0 ],
					"text" : "abc.drops~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 420.000012516975403, 956.000028491020203, 141.0, 22.0 ],
					"text" : "abc.mc.chopan~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 254.666674256324768, 956.000028491020203, 148.0, 22.0 ],
					"text" : "abc.mc.chopan~ @chan 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 130.666670560836792, 956.000028491020203, 107.0, 22.0 ],
					"text" : "abc.mc.chopan~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 14.666667103767395, 956.000028491020203, 97.0, 22.0 ],
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
					"patching_rect" : [ 16.000000476837158, 920.000027418136597, 81.0, 22.0 ],
					"text" : "abc.cartopol~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 420.000012516975403, 881.333359599113464, 143.0, 22.0 ],
					"text" : "abc.mc.busplus~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 254.666674256324768, 881.333359599113464, 150.0, 22.0 ],
					"text" : "abc.mc.busplus~ @chan 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 16.000000476837158, 881.333359599113464, 99.0, 22.0 ],
					"text" : "abc.mc.busplus~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 132.000003933906555, 881.333359599113464, 109.0, 22.0 ],
					"text" : "abc.mc.busplus~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 420.000012516975403, 837.333358287811279, 144.0, 22.0 ],
					"text" : "abc.mc.busmult~ @inst 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 254.666674256324768, 837.333358287811279, 151.0, 22.0 ],
					"text" : "abc.mc.busmult~ @chan 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 16.000000476837158, 837.333358287811279, 100.0, 22.0 ],
					"text" : "abc.mc.busmult~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 132.000003933906555, 837.333358287811279, 110.0, 22.0 ],
					"text" : "abc.mc.busmult~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.666667103767395, 1629.33338189125061, 98.0, 22.0 ],
					"text" : "abc.audiotester~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 584.000017404556274, 792.000023603439331, 184.0, 22.0 ],
					"text" : "abc.mc.busselect~ @instances 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 340.000010132789612, 792.000023603439331, 236.0, 22.0 ],
					"text" : "abc.mc.busselect~ @chan 4 @instances 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 142.666670918464661, 792.000023603439331, 192.0, 22.0 ],
					"text" : "abc.mc.busselect~ 5 @channels 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 792.000023603439331, 118.0, 22.0 ],
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
					"patching_rect" : [ 128.000003814697266, 752.000022411346436, 116.0, 22.0 ],
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
					"patching_rect" : [ 258.666674375534058, 752.000022411346436, 182.0, 22.0 ],
					"text" : "abc.mc.addsynth~ @instances 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 16.000000476837158, 752.000022411346436, 106.0, 22.0 ],
					"text" : "abc.mc.addsynth~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 122.666670322418213, 716.00002133846283, 186.0, 22.0 ],
					"text" : "abc.hoa.wider~ 6 @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 716.00002133846283, 100.0, 22.0 ],
					"text" : "abc.hoa.wider~ 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 262.666674494743347, 677.333353519439697, 160.0, 22.0 ],
					"text" : "abc.vbap~ 4 @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 677.333353519439697, 235.0, 22.0 ],
					"text" : "abc.vbap~ 5 @dimensions 2 @speakers 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 609.333351492881775, 148.0, 22.0 ],
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
					"patching_rect" : [ 16.000000476837158, 572.000017046928406, 186.0, 22.0 ],
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
					"patching_rect" : [ 758.666689276695251, 572.000017046928406, 188.0, 22.0 ],
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
					"patching_rect" : [ 556.000016570091248, 572.000017046928406, 190.0, 22.0 ],
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
					"patching_rect" : [ 398.666678547859192, 572.000017046928406, 153.0, 22.0 ],
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
					"patching_rect" : [ 208.000006198883057, 572.000017046928406, 182.0, 22.0 ],
					"text" : "abc.trajectories~ @mode square"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.666670441627502, 528.000015735626221, 104.0, 22.0 ],
					"text" : "abc.hoa.scope~ 3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 528.000015735626221, 94.0, 22.0 ],
					"text" : "abc.hoa.scope~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 122.666670322418213, 492.000014662742615, 188.0, 22.0 ],
					"text" : "abc.hoa.rotate~ 4 @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 492.000014662742615, 92.0, 22.0 ],
					"text" : "abc.hoa.rotate~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.000000476837158, 449.333346724510193, 91.0, 22.0 ],
					"text" : "abc.hoa.optim~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 244.000007271766663, 449.333346724510193, 187.0, 22.0 ],
					"text" : "abc.hoa.optim~ 5 @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 126.666670441627502, 449.333346724510193, 101.0, 22.0 ],
					"text" : "abc.hoa.optim~ 5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 113.000003397464752, 412.000012278556824, 103.0, 22.0 ],
					"text" : "abc.hoa.mirror~ 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.000000476837158, 412.000012278556824, 93.0, 22.0 ],
					"text" : "abc.hoa.mirror~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 302.0, 304.0, 158.0, 22.0 ],
					"text" : "abc.hoa.delay~ 5 @mode fx"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 114.0, 304.0, 168.0, 22.0 ],
					"text" : "abc.hoa.delay~ 3 @mode syn"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 16.0, 304.0, 90.0, 22.0 ],
					"text" : "abc.hoa.delay~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 258.0, 252.0, 22.0 ],
					"text" : "abc.hoa.grain~ 5 @mode syn @dimensions 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
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
					"numinlets" : 2,
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
					"patching_rect" : [ 15.0, 96.0, 95.0, 22.0 ],
					"text" : "abc.hoa.map~ 3",
					"varname" : "abc.hoa.decoder~[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 15.0, 19.0, 269.0, 22.0 ],
					"text" : "abc.hoa.encoder~ 5 @dimensions 2 @sources 5",
					"varname" : "abc.hoa.decoder~[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
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
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.cartopol~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.delaychain~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.drops~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.envfollower~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.generator~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.decoder~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.decorrelation~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.delay~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.encoder~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.grain~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.map~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.mirror~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.optim~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.ringmod~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.rotate~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.scope~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.stereodecoder~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.stereoencoder~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.wider~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.jupiterbank~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.linedrive~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.addsynth~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.busmult~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.busplus~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.busselect~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.chopan~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.delay~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.flanger~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.freqshift~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.gain~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.grain~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.harmo~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.matrix~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.multinoise~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.pulsedenv2synth~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.randenv~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mc.substractsynth~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.mult2pi~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.peakamp~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.phasor2pi~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.poltocar~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.puckettespaf~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.rev4~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.rissetsbell~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.soundcoat~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.sounddetector~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.soundgrain~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.trajectories~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.vbap~.maxpat",
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc_2d_decoder3_8~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_decoder5_12~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_decoder7_5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_encoder1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_fx_delay1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_fx_delay5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_fx_grain4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_fx_grain5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_map3_1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_map3_5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_map5_8~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_map7_8~.mxo",
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
				"name" : "abc_2d_mirror7~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_multiencoder5_5~.mxo",
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
				"name" : "abc_2d_stereoencoder5~.mxo",
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
				"name" : "abc_2d_vbap5~.mxo",
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
				"name" : "abc_busselect16~.mxo",
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
				"name" : "abc_busselect8~.mxo",
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
				"name" : "abc_cosrandenv4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_cosrandenv5~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_cosrandenv6~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_cosrandenv8~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_delay1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_delaychain2~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_delaychain4~.mxo",
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
				"name" : "abc_flanger4~.mxo",
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
				"name" : "abc_grain1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_grain6~.mxo",
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
				"name" : "abc_linedrive~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_linrandenv1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_linrandenv4~.mxo",
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
				"bootpath" : "~/Documents/GitHub/abclib/forMaxLibrary/javascript",
				"patcherrelativepath" : "../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
