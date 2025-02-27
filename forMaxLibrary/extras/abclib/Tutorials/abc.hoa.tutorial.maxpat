{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 0.0, 66.0, 1307.0, 803.0 ],
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
		"toolbarvisible" : 0,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 9,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 0,
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"showrootpatcherontab" : 0,
		"showontab" : 0,
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.0, 211.0, 54.0, 22.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1307.0, 777.0 ],
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 149.0, 150.5, 68.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 194.0, 207.0, 25.0 ],
									"text" : "drop file"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 417.0, 150.5, 68.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 220.0, 179.0, 207.0, 25.0 ],
									"text" : "drop file"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 73.0, 404.5, 189.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 310.0, 269.0, 193.0, 25.0 ],
									"text" : "ambisonics flux is summable"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-43",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 389.0, 516.0, 190.0, 54.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 295.0, 254.0, 193.0, 54.0 ],
									"text" : "the @sources attribute allow to encode until 8 sources with the same encoder object"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.5, 29.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 668.0, 38.5, 97.0, 22.0 ],
									"text" : "abc.comment.bg"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 20.0,
									"id" : "obj-41",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.5, 58.0, 484.0, 29.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 19.0, 79.0, 267.0, 51.0 ],
									"text" : "Example 2: sum of ambisonics flux"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 115.5, 635.0, 45.0, 45.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 416.875, 164.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 201.0, 532.0, 172.0, 22.0 ],
									"text" : "abc.hoa.encoder~ @sources 4"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-31",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpcredit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@obj-name", "Ambisonics", "Tutorial", "@obj-desc", "Encoding,", "decoding,", "formalism,", "analisis", "&", "example" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-4",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpheader.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"basictuning" : 0,
									"data" : 									{
										"clips" : [  ]
									}
,
									"followglobaltempo" : 0,
									"formantcorrection" : 0,
									"id" : "obj-29",
									"maxclass" : "playlist~",
									"mode" : "basic",
									"numinlets" : 1,
									"numoutlets" : 5,
									"originallength" : [ 0 ],
									"originaltempo" : 0,
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 18.0, 139.0, 129.0, 48.0 ],
									"pitchcorrection" : 0,
									"quality" : "basic",
									"timestretch" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"basictuning" : 0,
									"data" : 									{
										"clips" : [  ]
									}
,
									"followglobaltempo" : 0,
									"formantcorrection" : 0,
									"id" : "obj-32",
									"maxclass" : "playlist~",
									"mode" : "basic",
									"numinlets" : 1,
									"numoutlets" : 5,
									"originallength" : [ 0 ],
									"originaltempo" : 0,
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 219.0, 139.0, 178.0, 48.0 ],
									"pitchcorrection" : 0,
									"quality" : "basic",
									"timestretch" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.0, 447.0, 91.0, 22.0 ],
									"text" : "r dec-example2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 16.0, 406.0, 42.0, 22.0 ],
									"text" : "mc.+~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 490.0, 435.0, 93.0, 22.0 ],
									"text" : "s dec-example2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 314.0, 277.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 314.0, 311.0, 38.0, 22.0 ],
									"text" : "s0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 246.0, 277.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 246.0, 311.0, 39.0, 22.0 ],
									"text" : "a0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 218.0, 350.0, 115.0, 22.0 ],
									"text" : "abc.hoa.encoder~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 709.0, 323.0, 72.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 709.0, 352.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 709.0, 383.0, 90.0, 22.0 ],
									"text" : "directangles $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 656.0, 384.0, 39.0, 22.0 ],
									"text" : "a3 $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-50",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 656.0, 270.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.494117647058824, 0.494117647058824, 0.494117647058824, 1.0 ],
									"bgcolor2" : [ 0.494117647058824, 0.494117647058824, 0.494117647058824, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.494117647058824, 0.494117647058824, 0.494117647058824, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 600.0, 354.0, 39.0, 22.0 ],
									"text" : "a2 $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-7",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 600.0, 270.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-8",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 545.0, 270.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 545.0, 327.0, 39.0, 22.0 ],
									"text" : "a1 $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-40",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 490.0, 270.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 301.0, 39.0, 22.0 ],
									"text" : "a0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "float", "float", "float" ],
									"patching_rect" : [ 490.0, 234.0, 101.0, 22.0 ],
									"text" : "unpack 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 490.0, 209.0, 160.0, 22.0 ],
									"text" : "loadmess 45. 135. 225. 315."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 103.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"id" : "obj-35",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"orientation" : 1,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 219.0, 207.0, 136.0, 41.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[6]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"id" : "obj-34",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"orientation" : 1,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 18.0, 205.0, 136.0, 41.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[7]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 113.0, 277.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 113.0, 311.0, 38.0, 22.0 ],
									"text" : "s0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 45.0, 277.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 45.0, 311.0, 39.0, 22.0 ],
									"text" : "a0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"lastchannelcount" : 4,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 16.0, 507.0, 75.0, 136.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~[1]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "mc.live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 16.0, 658.0, 94.0, 22.0 ],
									"text" : "mc.dac~ 1 4 3 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 16.0, 477.0, 105.0, 22.0 ],
									"text" : "abc.hoa.decoder~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 16.0, 350.0, 115.0, 22.0 ],
									"text" : "abc.hoa.encoder~ 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"midpoints" : [ 581.5, 262.75, 665.5, 262.75 ],
									"source" : [ "obj-11", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 554.166666666666629, 262.75, 609.5, 262.75 ],
									"source" : [ "obj-11", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 526.833333333333371, 262.75, 554.5, 262.75 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 718.5, 416.5, 499.5, 416.5 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"midpoints" : [ 227.5, 388.5, 48.5, 388.5 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"hidden" : 1,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 665.5, 415.75, 499.5, 415.75 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"order" : 1,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"order" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 609.5, 415.75, 499.5, 415.75 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 554.5, 415.25, 499.5, 415.25 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 84.0, 178.0, 82.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"example 2\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1307.0, 777.0 ],
						"bglocked" : 1,
						"openinpresentation" : 1,
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
						"toolbars_unpinned_last_save" : 15,
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Avenir Book",
									"fontsize" : 12.0,
									"id" : "obj-114",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 97.0, 527.0, 23.0, 23.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 469.0, 198.0, 23.0, 23.0 ],
									"text" : "1",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.905882352941176, 0.862745098039216, 0.658823529411765, 1.0 ],
									"id" : "obj-115",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 93.0, 525.0, 23.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 465.0, 196.0, 23.0, 25.0 ],
									"proportion" : 0.5,
									"shape" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 973.0, 540.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 581.0, 75.0, 97.0, 22.0 ],
									"text" : "abc.comment.bg"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 90.0, 629.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 60.0, 233.0, 29.0 ],
									"text" : "2D Ambisonics: decoding"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 121.0, 386.0, 74.0 ],
									"presentation" : 1,
									"presentation_linecount" : 4,
									"presentation_rect" : [ 4.0, 87.0, 479.0, 60.0 ],
									"text" : "The decoding process consists of sampling the circular or spherical function representing the sound field. The sampling pattern can be regular, semi-regular, or irregular. For 2D reproduction, regular sampling of the circle corresponds to a setup with at least 2N+1 loudspeakers evenly distributed around a circle."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 889.0, 227.0, 95.0, 22.0 ],
									"text" : "r angle_source2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patching_rect" : [ 823.0, 383.0, 150.0, 22.0 ],
									"text" : "mc.unpack~ 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 823.0, 488.5, 32.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 823.0, 543.5, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 847.0, 515.5, 43.0, 22.0 ],
									"text" : "local 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 823.0, 457.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 823.0, 583.5, 45.0, 45.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 417.674096584320068, 167.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 909.0, 260.666667878627777, 88.0, 22.0 ],
									"text" : "r angle_source"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 954.0, 416.0, 58.0, 22.0 ],
									"text" : "send~ h1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 889.0, 416.0, 62.0, 22.0 ],
									"text" : "send~ h-1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 823.0, 416.0, 58.0, 22.0 ],
									"text" : "send~ h0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 823.0, 314.666667878627777, 44.0, 22.0 ],
									"text" : "sig~ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 909.0, 320.666667878627777, 39.0, 22.0 ],
									"text" : "a0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 909.0, 289.666667878627777, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 823.0, 352.666667878627777, 105.0, 22.0 ],
									"text" : "abc.hoa.encoder~"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 680.0, 711.0, 259.0, 39.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 468.5, 167.0, 207.0, 39.0 ],
									"text" : "switch on dac to show the gain of loudspeakers"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-10",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpcredit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@obj-name", "Ambisonics", "Tutorial", "@obj-desc", "Encoding,", "decoding,", "formalism,", "analisis", "&", "example" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-18",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpheader.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1156.0, 899.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 43.0, 224.0, 103.0, 20.0 ],
									"text" : "Positive values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1141.0, 884.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 43.0, 198.0, 103.0, 20.0 ],
									"text" : "Negative values"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 513.0, 144.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 86.0, 165.0, 129.0, 20.0 ],
									"text" : "Projection angle (θ)"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 828.0, 677.0, 259.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 205.0, 164.0, 207.0, 25.0 ],
									"text" : "change the source projection angle"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 997.0, 593.5, 259.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 630.0, 295.0, 89.0, 25.0 ],
									"text" : "loudspeaker"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.985398828983307, 0.0, 0.033121161162853, 1.0 ],
									"id" : "obj-139",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1167.0, 640.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 223.0, 31.0, 15.0 ],
									"proportion" : 0.505611672278339
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.017158545553684, 0.0, 0.998194456100464, 1.0 ],
									"id" : "obj-135",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1143.0, 640.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 197.0, 31.0, 15.0 ],
									"proportion" : 0.505611672278339
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 32.833330571651459, 325.0, 168.0, 22.0 ],
									"text" : "abc.hoa.optim~ @optimtype 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "signal", "signal", "signal", "signal" ],
									"patching_rect" : [ 32.0, 410.0, 84.0, 22.0 ],
									"text" : "mc.unpack~ 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 32.833330571651459, 297.666667640209198, 70.0, 22.0 ],
									"text" : "mc.pack~ 3"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 909.0, 626.0, 259.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 647.0, 261.0, 127.0, 25.0 ],
									"text" : "gain of loudspeaker"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light",
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 316.000009417533875, 399.333345234394073, 141.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 284.0, 348.0, 100.0, 21.0 ],
									"text" : "Gain computation"
								}

							}
, 							{
								"box" : 								{
									"filename" : "scope.js",
									"id" : "obj-6",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 524.0, 462.0, 207.0, 205.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 416.0, 295.0, 208.681532621383667, 218.000006496906281 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 574.0, 398.0, 152.0, 22.0 ],
									"text" : "loadmess compile scope.js"
								}

							}
, 							{
								"box" : 								{
									"filename" : "scope.js",
									"id" : "obj-52",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 104.0, 488.5, 207.0, 205.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 31.0, 304.0, 205.33333945274353, 218.000006496906281 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 307.0, 431.0, 95.0, 22.0 ],
									"text" : "r angle_source2"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-5",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2.0, 85.0, 386.0, 164.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 60.0, 476.0, 89.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-51",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1139.0, 504.0, 242.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 465.0, 265.0, 44.0, 21.0 ],
									"text" : "FL"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1124.0, 489.0, 243.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 465.0, 517.0, 31.0, 21.0 ],
									"text" : "RL"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-49",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1224.0, 441.0, 234.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 626.0, 516.0, 30.0, 21.0 ],
									"text" : "RR"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1209.0, 426.0, 243.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 621.0, 263.0, 31.0, 21.0 ],
									"text" : "FR"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 446.0, 132.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 125.5, 265.0, 36.0, 22.0 ],
									"text" : "r~ h1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 79.49999862909317, 265.0, 40.0, 22.0 ],
									"text" : "r~ h-1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 32.833330571651459, 265.0, 36.0, 22.0 ],
									"text" : "r~ h0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-100",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1156.5, 463.0, 149.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 523.0, 377.0, 22.0, 17.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-97",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1275.0, 367.0, 149.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 536.0, 377.0, 22.0, 17.0 ],
									"text" : "0.2"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-93",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1260.0, 352.0, 149.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 553.0, 377.0, 22.0, 17.0 ],
									"text" : "0.4"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-85",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1245.0, 337.0, 149.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 572.0, 377.0, 22.0, 17.0 ],
									"text" : "0.6"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-77",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1230.0, 322.0, 149.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 591.0, 377.0, 22.0, 17.0 ],
									"text" : "0.8"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-76",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1215.0, 307.0, 149.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 613.0, 377.0, 17.0, 17.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1168.0, 266.0, 156.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 518.0, 387.0, 108.0, 20.0 ],
									"text" : "----|----|----|-----|----|"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1153.0, 251.0, 156.0, 20.0 ],
									"text" : "----|-----|---|----|----|"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "panel",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1185.0, 60.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 283.0, 372.0, 98.0, 51.0 ],
									"shape" : 3
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.285456187895212,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1163.0, 319.0, 93.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 439.0, 248.0, 159.0, 21.0 ],
									"text" : "post-decodage",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 118.0, 350.0, 51.0, 22.0 ],
									"text" : "r angles"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"linecount" : 7,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 446.0, 164.0, 109.0, 116.0 ],
									"text" : ";\rangles directangles 1;\rangles a0 45;\rangles a1 135;\rangles a2 225;\rangles a3 315;\r"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.870129870129869,
									"id" : "obj-22",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 125.333336114883423, 420.666667878627777, 103.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 572.0, 263.0, 46.75, 20.0 ],
									"sig" : 0.6
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.376623376623375,
									"id" : "obj-14",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 94.000001847743988, 448.666668713092804, 102.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 576.0, 517.0, 49.0, 19.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.376623376623375,
									"id" : "obj-16",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 63.333334267139435, 476.666669547557831, 102.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 414.0, 517.0, 49.0, 19.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.870129870129869,
									"id" : "obj-17",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 32.0, 504.666670382022858, 103.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 416.0, 265.0, 46.75, 20.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 32.0, 380.0, 105.0, 22.0 ],
									"text" : "abc.hoa.decoder~"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 16.358575509874338,
									"id" : "obj-46",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1148.0, 304.0, 120.0, 46.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 32.0, 257.0, 194.0, 46.0 ],
									"text" : "Intermediate representation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1179.0, 396.0, 264.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 626.0, 387.0, 33.0, 20.0 ],
									"text" : "270°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1164.0, 381.0, 264.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 508.0, 502.0, 33.0, 20.0 ],
									"text" : "180°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1149.0, 366.0, 160.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 518.0, 280.0, 27.0, 20.0 ],
									"text" : "0°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1134.0, 351.0, 216.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 394.0, 388.0, 27.0, 20.0 ],
									"text" : "90°"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 307.0, 321.0, 73.0, 22.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "number",
									"maximum" : 360,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 307.0, 354.0, 74.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 9.0, 165.0, 74.0, 22.0 ],
									"varname" : "angle_source"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 307.0, 383.0, 97.0, 22.0 ],
									"text" : "s angle_source2"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-48",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 851.0, 704.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.0, 249.0, 269.333341360092163, 296.000008821487427 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"forceaspect" : 1,
									"id" : "obj-36",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 1008.0, 17.0, 100.0, 98.958333333333343 ],
									"pic" : "hp_1.png",
									"presentation" : 1,
									"presentation_rect" : [ 403.0, 277.0, 71.0, 70.260416666666671 ]
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"id" : "obj-38",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 1047.0, 44.0, 100.0, 98.958333333333343 ],
									"pic" : "hp_1.png",
									"presentation" : 1,
									"presentation_rect" : [ 564.0, 450.0, 71.0, 70.260416666666671 ]
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"forceaspect" : 1,
									"id" : "obj-40",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 1051.0, 160.0, 100.0, 106.097560975609767 ],
									"pic" : "hp_2.png",
									"presentation" : 1,
									"presentation_rect" : [ 571.0, 275.0, 66.0, 70.024390243902445 ]
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"forceaspect" : 1,
									"id" : "obj-39",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 1036.0, 145.0, 100.0, 106.097560975609767 ],
									"pic" : "hp_2.png",
									"presentation" : 1,
									"presentation_rect" : [ 404.0, 449.0, 66.0, 70.024390243902445 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-43",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 987.0, 711.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 387.0, 250.0, 277.706984519958496, 296.815263271331787 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"source" : [ "obj-12", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 2 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 4,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 5,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"order" : 2,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 3,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 6,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"order" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-55", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-55", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-55", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"order" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"order" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 1 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "rnbodefault",
								"default" : 								{
									"accentcolor" : [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
									"bgcolor" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0.0,
										"color" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
										"color1" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
										"color2" : [ 0.263682, 0.004541, 0.038797, 1.0 ],
										"proportion" : 0.39,
										"type" : "color"
									}
,
									"color" : [ 0.929412, 0.929412, 0.352941, 1.0 ],
									"elementcolor" : [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
									"fontname" : [ "Lato" ],
									"fontsize" : [ 12.0 ],
									"stripecolor" : [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
									"textcolor_inverse" : [ 0.968627, 0.968627, 0.968627, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rnbohighcontrast",
								"default" : 								{
									"accentcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0.0,
										"color" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color1" : [ 0.090196078431373, 0.090196078431373, 0.090196078431373, 1.0 ],
										"color2" : [ 0.156862745098039, 0.168627450980392, 0.164705882352941, 1.0 ],
										"proportion" : 0.5,
										"type" : "color"
									}
,
									"clearcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"color" : [ 1.0, 0.874509803921569, 0.141176470588235, 1.0 ],
									"editing_bgcolor" : [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
									"elementcolor" : [ 0.223386004567146, 0.254748553037643, 0.998085916042328, 1.0 ],
									"fontsize" : [ 13.0 ],
									"locked_bgcolor" : [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
									"selectioncolor" : [ 0.301960784313725, 0.694117647058824, 0.949019607843137, 1.0 ],
									"stripecolor" : [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 21.0, 50.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p decoding"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1307.0, 777.0 ],
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-43",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 725.5, 318.5, 189.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 295.0, 254.0, 193.0, 25.0 ],
									"text" : "angle of loudspeakers in degree"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-41",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 734.0, 385.0, 172.0, 39.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 280.0, 239.0, 207.0, 39.0 ],
									"text" : "increment of angle in anti-clockwise"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 213.0, 496.0, 172.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 265.0, 224.0, 207.0, 25.0 ],
									"text" : "decoding for 4 loudspeakers"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-37",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 243.0, 388.0, 210.0, 54.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 250.0, 209.0, 210.0, 54.0 ],
									"text" : "weight of each harmonics \nAt first order in 2D en 2D there are  (2L+1) harmonics with L the order"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 228.0, 344.0, 157.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 235.0, 194.0, 207.0, 25.0 ],
									"text" : "right input is for controls"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 236.0, 269.5, 157.0, 39.0 ],
									"presentation" : 1,
									"presentation_linecount" : 2,
									"presentation_rect" : [ 220.0, 179.0, 207.0, 39.0 ],
									"text" : "projection angle (degree)\nrotation speed (t/s)"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bubble" : 1,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 191.5, 179.5, 68.0, 25.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 205.0, 164.0, 207.0, 25.0 ],
									"text" : "drop file"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 510.5, 34.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 668.0, 38.5, 97.0, 22.0 ],
									"text" : "abc.comment.bg"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"fontsize" : 20.0,
									"id" : "obj-42",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 63.0, 484.0, 51.0 ],
									"presentation" : 1,
									"presentation_linecount" : 3,
									"presentation_rect" : [ 19.0, 79.0, 267.0, 74.0 ],
									"text" : "Example 1: encoding-decoding 2D for one source at first order"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 121.0, 661.0, 45.0, 45.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 416.875, 164.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"basictuning" : 0,
									"data" : 									{
										"clips" : [  ]
									}
,
									"followglobaltempo" : 0,
									"formantcorrection" : 0,
									"id" : "obj-32",
									"maxclass" : "playlist~",
									"mode" : "basic",
									"numinlets" : 1,
									"numoutlets" : 5,
									"originallength" : [ 0 ],
									"originaltempo" : 0,
									"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 8.0, 168.0, 178.0, 48.0 ],
									"pitchcorrection" : 0,
									"quality" : "basic",
									"timestretch" : [ 0 ]
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@obj-name", "Ambisonics", "Tutorial", "@obj-desc", "Encoding,", "decoding,", "formalism,", "analisis", "&", "example" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-4",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpheader.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-5",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpcredit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 172.0, 245.5, 80.0, 22.0 ],
									"text" : "loadmess 0.1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"lastchannelcount" : 4,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 10.0, 529.0, 48.0, 136.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "mc.live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.0, 459.0, 91.0, 22.0 ],
									"text" : "r dec-example1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 486.0, 486.0, 93.0, 22.0 ],
									"text" : "s dec-example1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patching_rect" : [ 41.0, 385.0, 158.0, 22.0 ],
									"text" : "mc.unpack~ 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 704.0, 359.0, 72.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 704.0, 392.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 704.0, 433.0, 90.0, 22.0 ],
									"text" : "directangles $1"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 652.0, 434.0, 39.0, 22.0 ],
									"text" : "a3 $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-50",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 652.0, 320.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.494117647058824, 0.494117647058824, 0.494117647058824, 1.0 ],
									"bgcolor2" : [ 0.494117647058824, 0.494117647058824, 0.494117647058824, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.494117647058824, 0.494117647058824, 0.494117647058824, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 596.0, 404.0, 39.0, 22.0 ],
									"text" : "a2 $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-48",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 596.0, 320.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-46",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 541.0, 320.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 541.0, 377.0, 39.0, 22.0 ],
									"text" : "a1 $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-40",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 486.0, 320.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_autogradient" : 0.0,
									"bgfillcolor_color" : [ 0.498039215686275, 0.498039215686275, 0.498039215686275, 1.0 ],
									"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1.0 ],
									"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
									"bgfillcolor_proportion" : 0.5,
									"bgfillcolor_type" : "color",
									"gradient" : 1,
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 486.0, 351.0, 39.0, 22.0 ],
									"text" : "a0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "float", "float", "float" ],
									"patching_rect" : [ 486.0, 284.0, 101.0, 22.0 ],
									"text" : "unpack 0. 0. 0. 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 486.0, 259.0, 160.0, 22.0 ],
									"text" : "loadmess 45. 135. 225. 315."
								}

							}
, 							{
								"box" : 								{
									"channels" : 1,
									"id" : "obj-34",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"orientation" : 1,
									"outlettype" : [ "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 8.0, 231.0, 136.0, 41.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 0,
											"parameter_shortname" : "live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-15",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 172.0, 278.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 172.0, 312.0, 38.0, 22.0 ],
									"text" : "s0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 104.0, 278.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 312.0, 39.0, 22.0 ],
									"text" : "a0 $1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 181.0, 410.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 110.0, 409.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 41.0, 409.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 11.0, 684.0, 94.0, 22.0 ],
									"text" : "mc.dac~ 1 4 3 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 10.0, 496.0, 189.0, 22.0 ],
									"text" : "abc.hoa.decoder~ 1 @speakers 4"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 9.0, 353.0, 182.0, 22.0 ],
									"text" : "abc.hoa.encoder~ 1 @sources 1"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"hidden" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 713.5, 468.0, 495.5, 468.0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 495.5, 466.0, 495.5, 466.0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 550.5, 468.25, 495.5, 468.25 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 605.5, 468.75, 495.5, 468.75 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"midpoints" : [ 661.5, 468.75, 495.5, 468.75 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"midpoints" : [ 522.833333333333371, 312.75, 550.5, 312.75 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"midpoints" : [ 550.166666666666629, 312.75, 605.5, 312.75 ],
									"source" : [ "obj-9", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"midpoints" : [ 577.5, 312.75, 661.5, 312.75 ],
									"source" : [ "obj-9", 3 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 64.0, 138.0, 82.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p \"example 1\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1307.0, 777.0 ],
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 669.0, 395.0, 250.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 49.0, 109.0, 267.0, 29.0 ],
									"text" : "Irregular Projection System"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 388.0, 245.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 34.0, 94.0, 267.0, 29.0 ],
									"text" : "Regular Projection System"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 63.0, 629.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 19.0, 79.0, 267.0, 29.0 ],
									"text" : "Energy & Velocity vectors"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"linecount" : 15,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1.0, 89.0, 737.0, 208.0 ],
									"presentation" : 1,
									"presentation_linecount" : 15,
									"presentation_rect" : [ 20.0, 104.0, 735.0, 208.0 ],
									"text" : "To assess or anticipate the localization accuracy of an ambisonic reproduction, two indices were theorized by Gerzon, based on Makita’s theory of perception: the energy vector and the velocity vector. These vectors are calculated for a given reproduction system.\n\nThe velocity vector (denoted as Rv) applies to frequencies below 700 Hz. Its direction corresponds to the apparent direction of the source, while its magnitude indicates the precision (or blurriness) of the rendering.\n\nThe energy vector (denoted as Re) is the counterpart of the velocity vector for frequencies ranging from 500 Hz to 5 kHz. These localization indices, calculated from the signals sent to the loudspeakers, help optimize ambisonic signals to achieve the best possible rendering in a given situation.\n\nMichael A. Gerzon, « General Metatheory of Auditory Localisation », dans : Journal of The Audio Engineering Society (1992), url : https://api.semanticscholar.org/CorpusID:109628172\n\nYuko Makita, « On the Directional Localisation of Sound in the Stereophonic Sound Field », dans : 12th Meeting of the Technical Committee of the E.B.U, Monte Carlo, oct. 1962, url : https://api. semanticscholar.org/CorpusID:59763679."
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 685.0, -6.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 653.0, 23.5, 97.0, 22.0 ],
									"text" : "abc.comment.bg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"local" : 1,
									"maxclass" : "ezdac~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 525.0, 372.0, 45.0, 45.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 431.875, 179.0, 45.0, 45.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-15",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpcredit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@obj-name", "Ambisonics", "Tutorial", "@obj-desc", "Encoding,", "decoding,", "formalism,", "analisis", "&", "example" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-4",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpheader.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1018.0, 495.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"linecount" : 10,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1018.0, 522.0, 181.0, 156.0 ],
									"text" : ";\rdec-analisis-irreg directangles 1;\rdec-analisis-irreg a0 30;\rdec-analisis-irreg a1 90;\rdec-analisis-irreg a2 225;\rdec-analisis-irreg a3 280;\rls-pos2 a0 30;\rls-pos2 a1 90;\rls-pos2 a2 225;\rls-pos2 a3 280;\r"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 719.0, 457.0, 107.0, 22.0 ],
									"text" : "r dec-analisis-irreg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 719.0, 514.0, 55.0, 22.0 ],
									"text" : "r ls-pos2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 119.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 50.0, 47.0, 84.0, 22.0 ],
													"text" : "mc.unpack~ 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-99",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 52.0, 234.0, 58.0, 22.0 ],
													"text" : "poltocar~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-100",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 200.0, 40.5, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 71.0, 165.0, 62.0, 22.0 ],
													"text" : "phasor~ 5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-103",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"text" : "cartopol~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-86",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 50.0, 11.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-88",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 316.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-89",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 85.0, 316.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-90",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 316.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 1 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"source" : [ "obj-100", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 1 ],
													"source" : [ "obj-101", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"order" : 1,
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"order" : 0,
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 1 ],
													"source" : [ "obj-103", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-99", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-99", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 623.0, 555.0, 175.238117694854736, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p p Vecteur Velocity"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 119.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 50.0, 66.0, 84.0, 22.0 ],
													"text" : "mc.unpack~ 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-108",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 52.0, 234.0, 58.0, 22.0 ],
													"text" : "poltocar~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 200.0, 40.5, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 107.0, 165.0, 62.0, 22.0 ],
													"text" : "phasor~ 5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-112",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"text" : "cartopol~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-80",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-82",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 316.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-83",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 85.0, 316.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-84",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 316.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 1 ],
													"source" : [ "obj-1", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"source" : [ "obj-1", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-108", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-108", 0 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 1 ],
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-108", 1 ],
													"source" : [ "obj-112", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"order" : 1,
													"source" : [ "obj-112", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"order" : 0,
													"source" : [ "obj-112", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 803.0, 555.0, 175.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p Vecteur Enregy"
								}

							}
, 							{
								"box" : 								{
									"bufsize" : 32,
									"id" : "obj-13",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 861.0, 582.0, 117.0, 115.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 803.0, 582.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"bufsize" : 32,
									"id" : "obj-17",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 681.0, 582.0, 117.0, 115.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 623.0, 582.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 623.0, 490.0, 115.0, 22.0 ],
									"text" : "abc.hoa.decoder~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"library_path0" : "/Users/goutmann/Documents/Max 8/Packages/faustgen/externals/msp/faustgen~.mxo/Contents/Resources/",
									"machinecode" : "z/rt/gwAAAEAAAAAAQAAAAUAAAB4AQAAACAAAAAAAAAZAAAA6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHsOAAAAAAAAmAEAAAAAAAB7DgAAAAAAAAcAAAAHAAAAAgAAAAAAAABfX3RleHQAAAAAAAAAAAAAX19URVhUAAAAAAAAAAAAAAAAAAAAAAAAgAQAAAAAAACYAQAAAgAAABgQAAAEAAAAAAQAgAAAAAAAAAAAAAAAAF9fY29uc3QAAAAAAAAAAABfX1RFWFQAAAAAAAAAAAAAgAQAAAAAAAD7CQAAAAAAABgGAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMgAAABgAAAABAAAAAAAOAAAAAAAAAAAALgAAABAAAAA4EAAAEAAAAAIAAAAYAAAASBAAAAsAAAD4EAAAkAoAAAsAAABQAAAAAAAAAAMAAAADAAAABwAAAAoAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwANf1sADX9YBIAC5wANf1sADX9bAA1/WAAAAkAAAQPnAA1/W/4MD0ekjB238bwip+mcJqfhfCqn2Vwup9E8Mqf17DanzAwGq9AMAqkhYQKnoNwD5V1RBqXloQKl7cEGpAABA/Sink9JISrTyyOjb8ijy5/IIAWeeCKOF0oiIqvJoP8TyKP/n8gkBZ54AJEgfGAAAkBgDQPkAAz/W4QMCrYAGQP0AJEgfAAM/1uEDAa2ACkD9ACRIHwADP9bhAwCtgA5A/QAkSB8AAz/W+2tArfljQa33W0KtfwYAcQscAFToAxMqfxoAcWIAAFQJAIDSkgAAFAkAgNJKAxnLX0EA8cMRAFRqAxnLX0EA8es3QPlDEQBUigMZy19BAPHjEABUKgMLy19BAPGDEABUKgMWy19BAPEjEABUKgMXy19BAPHDDwBUKgMVy19BAPFjDwBUagMay19BAPEDDwBUigMay19BAPGjDgBUSgMLy19BAPFDDgBUSgMWy19BAPHjDQBUSgMXy19BAPGDDQBUSgMVy19BAPEjDQBUigMby19BAPHDDABUagMLy19BAPFjDABUagMWy19BAPEDDABUagMXy19BAPGjCwBUagMVy19BAPFDCwBUigMLy19BAPHjCgBUigMWy19BAPGDCgBUigMXy19BAPEjCgBUigMVy19BAPHDCQBUCXl/kiIEAA8LAuDS6gMJqmMNCE4E9gdv6wMcquwDG6rtAxqq7gMZqgX2A2/vAxWq8AMXqvEDFqrgN0D5BgTBPCcGwTwQBsE88QXBPPLUZk5S1nBOUtZxTlPa4E5zKqEOcx4iDnOmIC9z2mFu1JDXT/QQ2U9yzmNOFBLbTzQSwU+T/nJu1JDWT/QQ2E9zxmROFBLaTzQSwE+S/nJuUsZkTsbcZm5zxuVO59xnbhDecG4x3nFu9NRmTpTWcE5SxuVOlNZxTpXa4E61KqEOtR4iDtMFgTyzpiAvc9phbnTOY07TkNdPsgWBPPMQ2U8TEttPMxLBT3L+dG5SxmROUsblTsaQ1k/mENhPBhLaTyYSwE+SBYE8xvx0bsbEZE7GxOVOZgWBPEoJAPGh+P9UPwEI60AJAFQKAIDSIPF904sDAItsAwCLTQMAiy4DAIuvAgCL8AIAi9ECAIvhN0D5IAAAiwLkAC8DEH4eCAEJywQQbh4JAuDSQfF90wVoYfwmamH8B2ph/PBpYfzRKGUeMSpnHjEqcB4oImAeMgFnnlMOYh4xKnMeswh3HtNMWR/zTFsfE05BH3MacR5zamMetAh2HtRQWB/0UFofFFJAH5EacR5zemQeMWpjHqUIZR7GCGYe5whnHhAKcB4xemQe1ChlHpQqZx6UKnAeiCJgHtNpIfxSDmIeUip0HrMIdx7TTFkfsWkh/PFMWx8RRkEfMRpyHjFqYx6lCHYeMXpkHsUUWB/lFFofBRZAH6UYch6RaSH8pWhjHqV4ZB5laSH8SgUAkR8BCusB+f9U/XtNqfRPTKn2V0up+F9KqfpnSan8b0ip6SNHbf+DA5HAA1/WeyJuYW1lIjogImFiY18yZF92ZWN0b3JzMyIsImZpbGVuYW1lIjogImZhdXN0Z2VuLTIiLCJ2ZXJzaW9uIjogIjIuNzUuNyIsImNvbXBpbGVfb3B0aW9ucyI6ICItbGFuZyBsbHZtIDE1LjAuNyAtY3QgMSAtZXMgMSAtbWNkIDE2IC1tZGQgMTAyNCAtbWR5IDMzIC1kb3VibGUgLWZ0eiAwIiwibGlicmFyeV9saXN0IjogWyIvVXNlcnMvZ291dG1hbm4vRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvc3RkZmF1c3QubGliIiwiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL3NpZ25hbHMubGliIiwiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL21hdGhzLmxpYiIsIi9Vc2Vycy9nb3V0bWFubi9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9iYXNpY3MubGliIiwiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL3JvdXRlcy5saWIiXSwiaW5jbHVkZV9wYXRobmFtZXMiOiBbIi9Vc2Vycy9nb3V0bWFubi9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcyIsIi9zaGFyZS9mYXVzdCIsIi91c3IvbG9jYWwvc2hhcmUvZmF1c3QiLCIvdXNyL3NoYXJlL2ZhdXN0IiwiLiJdLCJzaXplIjogMzYsImlucHV0cyI6IDQsIm91dHB1dHMiOiA0LCJzcl9pbmRleCI6IDMyLCJtZXRhIjogWyB7ICJhdXRob3IiOiAiQWxhaW4gQm9uYXJkaSwgUGF1bCBHb3V0bWFubiwgRGF2aWQgRmllcnJvICYgQWRyaWVuIFphbm5pIiB9LHsgImJhc2ljcy5saWIvbmFtZSI6ICJGYXVzdCBCYXNpYyBFbGVtZW50IExpYnJhcnkiIH0seyAiYmFzaWNzLmxpYi90YWJ1bGF0ZU5kIjogIkNvcHlyaWdodCAoQykgMjAyMyBCYXJ0IEJyb3VucyA8YmFydF9tYWduZXRvcGhvbi5ubD4iIH0seyAiYmFzaWNzLmxpYi92ZXJzaW9uIjogIjEuMTkuMSIgfSx7ICJjb21waWxlX29wdGlvbnMiOiAiLWxhbmcgbGx2bSAxNS4wLjcgLWN0IDEgLWVzIDEgLW1jZCAxNiAtbWRkIDEwMjQgLW1keSAzMyAtZG91YmxlIC1mdHogMCIgfSx7ICJmaWxlbmFtZSI6ICJmYXVzdGdlbi0yIiB9LHsgImxpY2VuY2UiOiAiTEdQTHYzIiB9LHsgIm1hdGhzLmxpYi9hdXRob3IiOiAiR1JBTUUiIH0seyAibWF0aHMubGliL2NvcHlyaWdodCI6ICJHUkFNRSIgfSx7ICJtYXRocy5saWIvbGljZW5zZSI6ICJMR1BMIHdpdGggZXhjZXB0aW9uIiB9LHsgIm1hdGhzLmxpYi9uYW1lIjogIkZhdXN0IE1hdGggTGlicmFyeSIgfSx7ICJtYXRocy5saWIvdmVyc2lvbiI6ICIyLjguMCIgfSx7ICJuYW1lIjogImFiY18yZF92ZWN0b3JzMyIgfSx7ICJyb3V0ZXMubGliL25hbWUiOiAiRmF1c3QgU2lnbmFsIFJvdXRpbmcgTGlicmFyeSIgfSx7ICJyb3V0ZXMubGliL3ZlcnNpb24iOiAiMS4yLjAiIH0seyAic2lnbmFscy5saWIvbmFtZSI6ICJGYXVzdCBTaWduYWwgUm91dGluZyBMaWJyYXJ5IiB9LHsgInNpZ25hbHMubGliL3ZlcnNpb24iOiAiMS42LjAiIH1dLCJ1aSI6IFsgeyJ0eXBlIjogImhncm91cCIsImxhYmVsIjogInZlY3RvclZFIiwiaXRlbXMiOiBbIHsidHlwZSI6ICJ2Z3JvdXAiLCJsYWJlbCI6ICJhbmdsZXMiLCJpdGVtcyI6IFsgeyJ0eXBlIjogIm5lbnRyeSIsImxhYmVsIjogImEwIiwic2hvcnRuYW1lIjogImEwIiwiYWRkcmVzcyI6ICIvdmVjdG9yVkUvYW5nbGVzL2EwIiwiaW5kZXgiOiAwLCJtZXRhIjogW3sgInVuaXQiOiAiZGVnIiB9XSwiaW5pdCI6IDAsIm1pbiI6IC0zNjAsIm1heCI6IDM2MCwic3RlcCI6IDF9LHsidHlwZSI6ICJuZW50cnkiLCJsYWJlbCI6ICJhMSIsInNob3J0bmFtZSI6ICJhMSIsImFkZHJlc3MiOiAiL3ZlY3RvclZFL2FuZ2xlcy9hMSIsImluZGV4IjogOCwibWV0YSI6IFt7ICJ1bml0IjogImRlZyIgfV0sImluaXQiOiA5MCwibWluIjogLTM2MCwibWF4IjogMzYwLCJzdGVwIjogMX0seyJ0eXBlIjogIm5lbnRyeSIsImxhYmVsIjogImEyIiwic2hvcnRuYW1lIjogImEyIiwiYWRkcmVzcyI6ICIvdmVjdG9yVkUvYW5nbGVzL2EyIiwiaW5kZXgiOiAxNiwibWV0YSI6IFt7ICJ1bml0IjogImRlZyIgfV0sImluaXQiOiAxODAsIm1pbiI6IC0zNjAsIm1heCI6IDM2MCwic3RlcCI6IDF9LHsidHlwZSI6ICJuZW50cnkiLCJsYWJlbCI6ICJhMyIsInNob3J0bmFtZSI6ICJhMyIsImFkZHJlc3MiOiAiL3ZlY3RvclZFL2FuZ2xlcy9hMyIsImluZGV4IjogMjQsIm1ldGEiOiBbeyAidW5pdCI6ICJkZWciIH1dLCJpbml0IjogMjcwLCJtaW4iOiAtMzYwLCJtYXgiOiAzNjAsInN0ZXAiOiAxfV19XX1dfQAAAAAAAJQAAAAKAABskAAAAAoAAF0cAAAAAQAAbBgAAAABAABdCAIYHAgCkAGUAQAAAAAAAIgKAAAOAQAAAAAAAAAAAAABAAAADgIAAIAEAAAAAAAAggoAAA4CAACABAAAAAAAAGUKAAAPAQAAEAAAAAAAAAAbCgAADwEAAAAAAAAAAAAAVwoAAA8BAAAkAAAAAAAAAA0KAAAPAQAAFAAAAAAAAAB0CgAADwEAABgAAAAAAAAAQwoAAA8BAAAEAAAAAAAAACsKAAAPAQAACAAAAAAAAAD9CQAAAQAAAAAAAAAAAAAAAF97Im5hbWUiOiAiYWJjXzJkX3ZlY3RvcnMzIiwiZmlsZW5hbWUiOiAiZmF1c3RnZW4tMiIsInZlcnNpb24iOiAiMi43NS43IiwiY29tcGlsZV9vcHRpb25zIjogIi1sYW5nIGxsdm0gMTUuMC43IC1jdCAxIC1lcyAxIC1tY2QgMTYgLW1kZCAxMDI0IC1tZHkgMzMgLWRvdWJsZSAtZnR6IDAiLCJsaWJyYXJ5X2xpc3QiOiBbIi9Vc2Vycy9nb3V0bWFubi9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9zdGRmYXVzdC5saWIiLCIvVXNlcnMvZ291dG1hbm4vRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvc2lnbmFscy5saWIiLCIvVXNlcnMvZ291dG1hbm4vRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvbWF0aHMubGliIiwiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL2Jhc2ljcy5saWIiLCIvVXNlcnMvZ291dG1hbm4vRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvcm91dGVzLmxpYiJdLCJpbmNsdWRlX3BhdGhuYW1lcyI6IFsiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzIiwiL3NoYXJlL2ZhdXN0IiwiL3Vzci9sb2NhbC9zaGFyZS9mYXVzdCIsIi91c3Ivc2hhcmUvZmF1c3QiLCIuIl0sInNpemUiOiAzNiwiaW5wdXRzIjogNCwib3V0cHV0cyI6IDQsInNyX2luZGV4IjogMzIsIm1ldGEiOiBbIHsgImF1dGhvciI6ICJBbGFpbiBCb25hcmRpLCBQYXVsIEdvdXRtYW5uLCBEYXZpZCBGaWVycm8gJiBBZHJpZW4gWmFubmkiIH0seyAiYmFzaWNzLmxpYi9uYW1lIjogIkZhdXN0IEJhc2ljIEVsZW1lbnQgTGlicmFyeSIgfSx7ICJiYXNpY3MubGliL3RhYnVsYXRlTmQiOiAiQ29weXJpZ2h0IChDKSAyMDIzIEJhcnQgQnJvdW5zIDxiYXJ0X21hZ25ldG9waG9uLm5sPiIgfSx7ICJiYXNpY3MubGliL3ZlcnNpb24iOiAiMS4xOS4xIiB9LHsgImNvbXBpbGVfb3B0aW9ucyI6ICItbGFuZyBsbHZtIDE1LjAuNyAtY3QgMSAtZXMgMSAtbWNkIDE2IC1tZGQgMTAyNCAtbWR5IDMzIC1kb3VibGUgLWZ0eiAwIiB9LHsgImZpbGVuYW1lIjogImZhdXN0Z2VuLTIiIH0seyAibGljZW5jZSI6ICJMR1BMdjMiIH0seyAibWF0aHMubGliL2F1dGhvciI6ICJHUkFNRSIgfSx7ICJtYXRocy5saWIvY29weXJpZ2h0IjogIkdSQU1FIiB9LHsgIm1hdGhzLmxpYi9saWNlbnNlIjogIkxHUEwgd2l0aCBleGNlcHRpb24iIH0seyAibWF0aHMubGliL25hbWUiOiAiRmF1c3QgTWF0aCBMaWJyYXJ5IiB9LHsgIm1hdGhzLmxpYi92ZXJzaW9uIjogIjIuOC4wIiB9LHsgIm5hbWUiOiAiYWJjXzJkX3ZlY3RvcnMzIiB9LHsgInJvdXRlcy5saWIvbmFtZSI6ICJGYXVzdCBTaWduYWwgUm91dGluZyBMaWJyYXJ5IiB9LHsgInJvdXRlcy5saWIvdmVyc2lvbiI6ICIxLjIuMCIgfSx7ICJzaWduYWxzLmxpYi9uYW1lIjogIkZhdXN0IFNpZ25hbCBSb3V0aW5nIExpYnJhcnkiIH0seyAic2lnbmFscy5saWIvdmVyc2lvbiI6ICIxLjYuMCIgfV0sInVpIjogWyB7InR5cGUiOiAiaGdyb3VwIiwibGFiZWwiOiAidmVjdG9yVkUiLCJpdGVtcyI6IFsgeyJ0eXBlIjogInZncm91cCIsImxhYmVsIjogImFuZ2xlcyIsIml0ZW1zIjogWyB7InR5cGUiOiAibmVudHJ5IiwibGFiZWwiOiAiYTAiLCJzaG9ydG5hbWUiOiAiYTAiLCJhZGRyZXNzIjogIi92ZWN0b3JWRS9hbmdsZXMvYTAiLCJpbmRleCI6IDAsIm1ldGEiOiBbeyAidW5pdCI6ICJkZWciIH1dLCJpbml0IjogMCwibWluIjogLTM2MCwibWF4IjogMzYwLCJzdGVwIjogMX0seyJ0eXBlIjogIm5lbnRyeSIsImxhYmVsIjogImExIiwic2hvcnRuYW1lIjogImExIiwiYWRkcmVzcyI6ICIvdmVjdG9yVkUvYW5nbGVzL2ExIiwiaW5kZXgiOiA4LCJtZXRhIjogW3sgInVuaXQiOiAiZGVnIiB9XSwiaW5pdCI6IDkwLCJtaW4iOiAtMzYwLCJtYXgiOiAzNjAsInN0ZXAiOiAxfSx7InR5cGUiOiAibmVudHJ5IiwibGFiZWwiOiAiYTIiLCJzaG9ydG5hbWUiOiAiYTIiLCJhZGRyZXNzIjogIi92ZWN0b3JWRS9hbmdsZXMvYTIiLCJpbmRleCI6IDE2LCJtZXRhIjogW3sgInVuaXQiOiAiZGVnIiB9XSwiaW5pdCI6IDE4MCwibWluIjogLTM2MCwibWF4IjogMzYwLCJzdGVwIjogMX0seyJ0eXBlIjogIm5lbnRyeSIsImxhYmVsIjogImEzIiwic2hvcnRuYW1lIjogImEzIiwiYWRkcmVzcyI6ICIvdmVjdG9yVkUvYW5nbGVzL2EzIiwiaW5kZXgiOiAyNCwibWV0YSI6IFt7ICJ1bml0IjogImRlZyIgfV0sImluaXQiOiAyNzAsIm1pbiI6IC0zNjAsIm1heCI6IDM2MCwic3RlcCI6IDF9XX1dfV19AF9fX3NpbmNvc19zdHJldABfZGVzdHJveW15ZHNwAF9jbGFzc0luaXRteWRzcABfaW5zdGFuY2VDb25zdGFudHNteWRzcABfaW5zdGFuY2VDbGVhcm15ZHNwAF9jb21wdXRlbXlkc3AAX2FsbG9jYXRlbXlkc3AAX2dldEpTT05teWRzcABsdG1wMQBsdG1wMAAAAA==",
									"machinecode_size" : 9400,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "multichannelsignal", "", "" ],
									"patching_rect" : [ 623.0, 522.0, 81.0, 22.0 ],
									"sample_format" : 1,
									"serial_number" : "FXG2R2WQ4564 bits",
									"sourcecode" : "//--------------------------------------------------------------------------------------//\n//----------------------------------------abclib----------------------------------------//\n//\n//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//\n//\n//-------BY ALAIN BONARDI, PAUL GOUTMANN, DAVID FIERRO & ADRIEN ZANNI - 2019-2024 ------//\n//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//\n//--------------------------------------------------------------------------------------//\n//\ndeclare author \"Alain Bonardi, Paul Goutmann, David Fierro & Adrien Zanni\";\ndeclare licence \"LGPLv3\";\ndeclare name \"abc_2d_vectors3\";\n//\nimport(\"stdfaust.lib\");\n//\n//\nabc_2d_vectors_ui(nls) = vectorVE(laz)\nwith {\n\ta(i, nls) = nentry(\"h:vectorVE/v:angles/a%i [unit:deg]\", i * 360 / nls, -360, 360, 1);\n\tlaz = par(i, nls, a(i, nls));\n};\n//\nvectorVE(laz) = thisVectorVE\nwith{\n\tp = outputs(laz);\n\tang(i) = ba.take(i+1, laz);\n\tlx(p) = par(i, p, * (cos((ang(i) + 90) / 180 * ma.PI)));\n\tly(p) = par(i, p, * (sin((ang(i) + 90) / 180 * ma.PI)));\n\tclip(mini,maxi) = min(maxi, max(mini, _));\n\tparSquare(p) = par(i, p, ^(2));\n\tsumOfSquare(p) = par(i, p, _ <: (*)) :> _ ;\n\tsimpleSum(p) = si.bus(p) :> _ ;\n\tzeroException =  _ <: (_ == (0)) * ma.MIN, _  : + ;\n\tvx(p) = si.bus(2*p+2) : par(i, 2, (lx(p):simpleSum(p))), si.bus(2):route(4,4, 1, 1, 2, 3, 3, 4, 4, 2) : /, / : clip(-1, 1), clip(-1,1);\n\tvy(p) = si.bus(2*p+2) : par(i, 2, (ly(p):simpleSum(p))), si.bus(2):route(4,4, 1, 1, 2, 3, 3, 4, 4, 2) : /, / : clip(-1, 1), clip(-1,1);\n\tthisVectorVE = si.bus(p) <: si.bus(p), (parSquare(p)<:si.bus(p), (simpleSum(p):zeroException)), (simpleSum(p):zeroException) <: vx(p), vy(p) : ro.interleave(2, 2);\n};\n//\nclip(low, high, x) = min(max(x, low), high);\n//\nprocess = abc_2d_vectors_ui(4);\n",
									"sourcecode_size" : 1825,
									"text" : "mc.faustgen~",
									"varname" : "faustgen-5785170864",
									"version" : "1.72"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 107.0, 496.0, 48.0, 22.0 ],
									"text" : "r ls-pos"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2.0, 62.0, 743.0, 245.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 35.0, 112.0, 414.0, 149.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 383.0, 524.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"linecount" : 10,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 383.0, 551.0, 175.0, 156.0 ],
									"text" : ";\rdec-analisis-reg directangles 1;\rdec-analisis-reg a0 45;\rdec-analisis-reg a1 135;\rdec-analisis-reg a2 225;\rdec-analisis-reg a3 315;\rls-pos a0 45;\rls-pos a1 135;\rls-pos a2 225;\rls-pos a3 315;\r"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 119.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 50.0, 47.0, 84.0, 22.0 ],
													"text" : "mc.unpack~ 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-99",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 52.0, 234.0, 58.0, 22.0 ],
													"text" : "poltocar~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-100",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 200.0, 40.5, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 71.0, 165.0, 62.0, 22.0 ],
													"text" : "phasor~ 5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-103",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"text" : "cartopol~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-86",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 50.0, 11.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-88",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 316.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-89",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 85.0, 316.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-90",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 316.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 1 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"source" : [ "obj-100", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 1 ],
													"source" : [ "obj-101", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"order" : 1,
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"order" : 0,
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 1 ],
													"source" : [ "obj-103", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-99", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-99", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 11.0, 537.0, 175.238117694854736, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p p Vecteur Velocity"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 119.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "signal", "signal", "signal", "signal" ],
													"patching_rect" : [ 50.0, 66.0, 84.0, 22.0 ],
													"text" : "mc.unpack~ 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-108",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 52.0, 234.0, 58.0, 22.0 ],
													"text" : "poltocar~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 50.0, 200.0, 40.5, 22.0 ],
													"text" : "*~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "signal" ],
													"patching_rect" : [ 107.0, 165.0, 62.0, 22.0 ],
													"text" : "phasor~ 5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-112",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "signal", "signal" ],
													"patching_rect" : [ 50.0, 100.0, 60.0, 22.0 ],
													"text" : "cartopol~"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-80",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 50.0, 30.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-82",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 316.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-83",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 85.0, 316.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-84",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 120.0, 316.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 1 ],
													"source" : [ "obj-1", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"source" : [ "obj-1", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-108", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-108", 0 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 1 ],
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-108", 1 ],
													"source" : [ "obj-112", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"order" : 1,
													"source" : [ "obj-112", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"order" : 0,
													"source" : [ "obj-112", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 191.0, 537.0, 175.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p Vecteur Enregy"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 107.0, 448.0, 101.0, 22.0 ],
									"text" : "r dec-analisis-reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 355.0, 368.0, 41.0, 22.0 ],
									"text" : "sig~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 451.0, 368.0, 39.0, 22.0 ],
									"text" : "a0 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 451.0, 341.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"bufsize" : 32,
									"id" : "obj-111",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 249.0, 564.0, 117.0, 115.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-113",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 191.0, 564.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"bufsize" : 32,
									"id" : "obj-102",
									"maxclass" : "scope~",
									"numinlets" : 2,
									"numoutlets" : 0,
									"patching_rect" : [ 69.0, 564.0, 117.0, 115.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-104",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 11.0, 568.0, 56.0, 22.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 11.0, 472.0, 115.0, 22.0 ],
									"text" : "abc.hoa.decoder~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 355.0, 395.0, 115.0, 22.0 ],
									"text" : "abc.hoa.encoder~ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"library_path0" : "/Users/goutmann/Documents/Max 8/Packages/faustgen/externals/msp/faustgen~.mxo/Contents/Resources/",
									"machinecode" : "z/rt/gwAAAEAAAAAAQAAAAUAAAB4AQAAACAAAAAAAAAZAAAA6AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHsOAAAAAAAAmAEAAAAAAAB7DgAAAAAAAAcAAAAHAAAAAgAAAAAAAABfX3RleHQAAAAAAAAAAAAAX19URVhUAAAAAAAAAAAAAAAAAAAAAAAAgAQAAAAAAACYAQAAAgAAABgQAAAEAAAAAAQAgAAAAAAAAAAAAAAAAF9fY29uc3QAAAAAAAAAAABfX1RFWFQAAAAAAAAAAAAAgAQAAAAAAAD7CQAAAAAAABgGAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMgAAABgAAAABAAAAAAAOAAAAAAAAAAAALgAAABAAAAA4EAAAEAAAAAIAAAAYAAAASBAAAAsAAAD4EAAAkAoAAAsAAABQAAAAAAAAAAMAAAADAAAABwAAAAoAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAwANf1sADX9YBIAC5wANf1sADX9bAA1/WAAAAkAAAQPnAA1/W/4MD0ekjB238bwip+mcJqfhfCqn2Vwup9E8Mqf17DanzAwGq9AMAqkhYQKnoNwD5V1RBqXloQKl7cEGpAABA/Sink9JISrTyyOjb8ijy5/IIAWeeCKOF0oiIqvJoP8TyKP/n8gkBZ54AJEgfGAAAkBgDQPkAAz/W4QMCrYAGQP0AJEgfAAM/1uEDAa2ACkD9ACRIHwADP9bhAwCtgA5A/QAkSB8AAz/W+2tArfljQa33W0KtfwYAcQscAFToAxMqfxoAcWIAAFQJAIDSkgAAFAkAgNJKAxnLX0EA8cMRAFRqAxnLX0EA8es3QPlDEQBUigMZy19BAPHjEABUKgMLy19BAPGDEABUKgMWy19BAPEjEABUKgMXy19BAPHDDwBUKgMVy19BAPFjDwBUagMay19BAPEDDwBUigMay19BAPGjDgBUSgMLy19BAPFDDgBUSgMWy19BAPHjDQBUSgMXy19BAPGDDQBUSgMVy19BAPEjDQBUigMby19BAPHDDABUagMLy19BAPFjDABUagMWy19BAPEDDABUagMXy19BAPGjCwBUagMVy19BAPFDCwBUigMLy19BAPHjCgBUigMWy19BAPGDCgBUigMXy19BAPEjCgBUigMVy19BAPHDCQBUCXl/kiIEAA8LAuDS6gMJqmMNCE4E9gdv6wMcquwDG6rtAxqq7gMZqgX2A2/vAxWq8AMXqvEDFqrgN0D5BgTBPCcGwTwQBsE88QXBPPLUZk5S1nBOUtZxTlPa4E5zKqEOcx4iDnOmIC9z2mFu1JDXT/QQ2U9yzmNOFBLbTzQSwU+T/nJu1JDWT/QQ2E9zxmROFBLaTzQSwE+S/nJuUsZkTsbcZm5zxuVO59xnbhDecG4x3nFu9NRmTpTWcE5SxuVOlNZxTpXa4E61KqEOtR4iDtMFgTyzpiAvc9phbnTOY07TkNdPsgWBPPMQ2U8TEttPMxLBT3L+dG5SxmROUsblTsaQ1k/mENhPBhLaTyYSwE+SBYE8xvx0bsbEZE7GxOVOZgWBPEoJAPGh+P9UPwEI60AJAFQKAIDSIPF904sDAItsAwCLTQMAiy4DAIuvAgCL8AIAi9ECAIvhN0D5IAAAiwLkAC8DEH4eCAEJywQQbh4JAuDSQfF90wVoYfwmamH8B2ph/PBpYfzRKGUeMSpnHjEqcB4oImAeMgFnnlMOYh4xKnMeswh3HtNMWR/zTFsfE05BH3MacR5zamMetAh2HtRQWB/0UFofFFJAH5EacR5zemQeMWpjHqUIZR7GCGYe5whnHhAKcB4xemQe1ChlHpQqZx6UKnAeiCJgHtNpIfxSDmIeUip0HrMIdx7TTFkfsWkh/PFMWx8RRkEfMRpyHjFqYx6lCHYeMXpkHsUUWB/lFFofBRZAH6UYch6RaSH8pWhjHqV4ZB5laSH8SgUAkR8BCusB+f9U/XtNqfRPTKn2V0up+F9KqfpnSan8b0ip6SNHbf+DA5HAA1/WeyJuYW1lIjogImFiY18yZF92ZWN0b3JzMyIsImZpbGVuYW1lIjogImZhdXN0Z2VuLTIiLCJ2ZXJzaW9uIjogIjIuNzUuNyIsImNvbXBpbGVfb3B0aW9ucyI6ICItbGFuZyBsbHZtIDE1LjAuNyAtY3QgMSAtZXMgMSAtbWNkIDE2IC1tZGQgMTAyNCAtbWR5IDMzIC1kb3VibGUgLWZ0eiAwIiwibGlicmFyeV9saXN0IjogWyIvVXNlcnMvZ291dG1hbm4vRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvc3RkZmF1c3QubGliIiwiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL3NpZ25hbHMubGliIiwiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL21hdGhzLmxpYiIsIi9Vc2Vycy9nb3V0bWFubi9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9iYXNpY3MubGliIiwiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL3JvdXRlcy5saWIiXSwiaW5jbHVkZV9wYXRobmFtZXMiOiBbIi9Vc2Vycy9nb3V0bWFubi9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcyIsIi9zaGFyZS9mYXVzdCIsIi91c3IvbG9jYWwvc2hhcmUvZmF1c3QiLCIvdXNyL3NoYXJlL2ZhdXN0IiwiLiJdLCJzaXplIjogMzYsImlucHV0cyI6IDQsIm91dHB1dHMiOiA0LCJzcl9pbmRleCI6IDMyLCJtZXRhIjogWyB7ICJhdXRob3IiOiAiQWxhaW4gQm9uYXJkaSwgUGF1bCBHb3V0bWFubiwgRGF2aWQgRmllcnJvICYgQWRyaWVuIFphbm5pIiB9LHsgImJhc2ljcy5saWIvbmFtZSI6ICJGYXVzdCBCYXNpYyBFbGVtZW50IExpYnJhcnkiIH0seyAiYmFzaWNzLmxpYi90YWJ1bGF0ZU5kIjogIkNvcHlyaWdodCAoQykgMjAyMyBCYXJ0IEJyb3VucyA8YmFydF9tYWduZXRvcGhvbi5ubD4iIH0seyAiYmFzaWNzLmxpYi92ZXJzaW9uIjogIjEuMTkuMSIgfSx7ICJjb21waWxlX29wdGlvbnMiOiAiLWxhbmcgbGx2bSAxNS4wLjcgLWN0IDEgLWVzIDEgLW1jZCAxNiAtbWRkIDEwMjQgLW1keSAzMyAtZG91YmxlIC1mdHogMCIgfSx7ICJmaWxlbmFtZSI6ICJmYXVzdGdlbi0yIiB9LHsgImxpY2VuY2UiOiAiTEdQTHYzIiB9LHsgIm1hdGhzLmxpYi9hdXRob3IiOiAiR1JBTUUiIH0seyAibWF0aHMubGliL2NvcHlyaWdodCI6ICJHUkFNRSIgfSx7ICJtYXRocy5saWIvbGljZW5zZSI6ICJMR1BMIHdpdGggZXhjZXB0aW9uIiB9LHsgIm1hdGhzLmxpYi9uYW1lIjogIkZhdXN0IE1hdGggTGlicmFyeSIgfSx7ICJtYXRocy5saWIvdmVyc2lvbiI6ICIyLjguMCIgfSx7ICJuYW1lIjogImFiY18yZF92ZWN0b3JzMyIgfSx7ICJyb3V0ZXMubGliL25hbWUiOiAiRmF1c3QgU2lnbmFsIFJvdXRpbmcgTGlicmFyeSIgfSx7ICJyb3V0ZXMubGliL3ZlcnNpb24iOiAiMS4yLjAiIH0seyAic2lnbmFscy5saWIvbmFtZSI6ICJGYXVzdCBTaWduYWwgUm91dGluZyBMaWJyYXJ5IiB9LHsgInNpZ25hbHMubGliL3ZlcnNpb24iOiAiMS42LjAiIH1dLCJ1aSI6IFsgeyJ0eXBlIjogImhncm91cCIsImxhYmVsIjogInZlY3RvclZFIiwiaXRlbXMiOiBbIHsidHlwZSI6ICJ2Z3JvdXAiLCJsYWJlbCI6ICJhbmdsZXMiLCJpdGVtcyI6IFsgeyJ0eXBlIjogIm5lbnRyeSIsImxhYmVsIjogImEwIiwic2hvcnRuYW1lIjogImEwIiwiYWRkcmVzcyI6ICIvdmVjdG9yVkUvYW5nbGVzL2EwIiwiaW5kZXgiOiAwLCJtZXRhIjogW3sgInVuaXQiOiAiZGVnIiB9XSwiaW5pdCI6IDAsIm1pbiI6IC0zNjAsIm1heCI6IDM2MCwic3RlcCI6IDF9LHsidHlwZSI6ICJuZW50cnkiLCJsYWJlbCI6ICJhMSIsInNob3J0bmFtZSI6ICJhMSIsImFkZHJlc3MiOiAiL3ZlY3RvclZFL2FuZ2xlcy9hMSIsImluZGV4IjogOCwibWV0YSI6IFt7ICJ1bml0IjogImRlZyIgfV0sImluaXQiOiA5MCwibWluIjogLTM2MCwibWF4IjogMzYwLCJzdGVwIjogMX0seyJ0eXBlIjogIm5lbnRyeSIsImxhYmVsIjogImEyIiwic2hvcnRuYW1lIjogImEyIiwiYWRkcmVzcyI6ICIvdmVjdG9yVkUvYW5nbGVzL2EyIiwiaW5kZXgiOiAxNiwibWV0YSI6IFt7ICJ1bml0IjogImRlZyIgfV0sImluaXQiOiAxODAsIm1pbiI6IC0zNjAsIm1heCI6IDM2MCwic3RlcCI6IDF9LHsidHlwZSI6ICJuZW50cnkiLCJsYWJlbCI6ICJhMyIsInNob3J0bmFtZSI6ICJhMyIsImFkZHJlc3MiOiAiL3ZlY3RvclZFL2FuZ2xlcy9hMyIsImluZGV4IjogMjQsIm1ldGEiOiBbeyAidW5pdCI6ICJkZWciIH1dLCJpbml0IjogMjcwLCJtaW4iOiAtMzYwLCJtYXgiOiAzNjAsInN0ZXAiOiAxfV19XX1dfQAAAAAAAJQAAAAKAABskAAAAAoAAF0cAAAAAQAAbBgAAAABAABdCAIYHAgCkAGUAQAAAAAAAIgKAAAOAQAAAAAAAAAAAAABAAAADgIAAIAEAAAAAAAAggoAAA4CAACABAAAAAAAAGUKAAAPAQAAEAAAAAAAAAAbCgAADwEAAAAAAAAAAAAAVwoAAA8BAAAkAAAAAAAAAA0KAAAPAQAAFAAAAAAAAAB0CgAADwEAABgAAAAAAAAAQwoAAA8BAAAEAAAAAAAAACsKAAAPAQAACAAAAAAAAAD9CQAAAQAAAAAAAAAAAAAAAF97Im5hbWUiOiAiYWJjXzJkX3ZlY3RvcnMzIiwiZmlsZW5hbWUiOiAiZmF1c3RnZW4tMiIsInZlcnNpb24iOiAiMi43NS43IiwiY29tcGlsZV9vcHRpb25zIjogIi1sYW5nIGxsdm0gMTUuMC43IC1jdCAxIC1lcyAxIC1tY2QgMTYgLW1kZCAxMDI0IC1tZHkgMzMgLWRvdWJsZSAtZnR6IDAiLCJsaWJyYXJ5X2xpc3QiOiBbIi9Vc2Vycy9nb3V0bWFubi9Eb2N1bWVudHMvTWF4IDgvUGFja2FnZXMvZmF1c3RnZW4vZXh0ZXJuYWxzL21zcC9mYXVzdGdlbn4ubXhvL0NvbnRlbnRzL1Jlc291cmNlcy9zdGRmYXVzdC5saWIiLCIvVXNlcnMvZ291dG1hbm4vRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvc2lnbmFscy5saWIiLCIvVXNlcnMvZ291dG1hbm4vRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvbWF0aHMubGliIiwiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzL2Jhc2ljcy5saWIiLCIvVXNlcnMvZ291dG1hbm4vRG9jdW1lbnRzL01heCA4L1BhY2thZ2VzL2ZhdXN0Z2VuL2V4dGVybmFscy9tc3AvZmF1c3RnZW5+Lm14by9Db250ZW50cy9SZXNvdXJjZXMvcm91dGVzLmxpYiJdLCJpbmNsdWRlX3BhdGhuYW1lcyI6IFsiL1VzZXJzL2dvdXRtYW5uL0RvY3VtZW50cy9NYXggOC9QYWNrYWdlcy9mYXVzdGdlbi9leHRlcm5hbHMvbXNwL2ZhdXN0Z2Vufi5teG8vQ29udGVudHMvUmVzb3VyY2VzIiwiL3NoYXJlL2ZhdXN0IiwiL3Vzci9sb2NhbC9zaGFyZS9mYXVzdCIsIi91c3Ivc2hhcmUvZmF1c3QiLCIuIl0sInNpemUiOiAzNiwiaW5wdXRzIjogNCwib3V0cHV0cyI6IDQsInNyX2luZGV4IjogMzIsIm1ldGEiOiBbIHsgImF1dGhvciI6ICJBbGFpbiBCb25hcmRpLCBQYXVsIEdvdXRtYW5uLCBEYXZpZCBGaWVycm8gJiBBZHJpZW4gWmFubmkiIH0seyAiYmFzaWNzLmxpYi9uYW1lIjogIkZhdXN0IEJhc2ljIEVsZW1lbnQgTGlicmFyeSIgfSx7ICJiYXNpY3MubGliL3RhYnVsYXRlTmQiOiAiQ29weXJpZ2h0IChDKSAyMDIzIEJhcnQgQnJvdW5zIDxiYXJ0X21hZ25ldG9waG9uLm5sPiIgfSx7ICJiYXNpY3MubGliL3ZlcnNpb24iOiAiMS4xOS4xIiB9LHsgImNvbXBpbGVfb3B0aW9ucyI6ICItbGFuZyBsbHZtIDE1LjAuNyAtY3QgMSAtZXMgMSAtbWNkIDE2IC1tZGQgMTAyNCAtbWR5IDMzIC1kb3VibGUgLWZ0eiAwIiB9LHsgImZpbGVuYW1lIjogImZhdXN0Z2VuLTIiIH0seyAibGljZW5jZSI6ICJMR1BMdjMiIH0seyAibWF0aHMubGliL2F1dGhvciI6ICJHUkFNRSIgfSx7ICJtYXRocy5saWIvY29weXJpZ2h0IjogIkdSQU1FIiB9LHsgIm1hdGhzLmxpYi9saWNlbnNlIjogIkxHUEwgd2l0aCBleGNlcHRpb24iIH0seyAibWF0aHMubGliL25hbWUiOiAiRmF1c3QgTWF0aCBMaWJyYXJ5IiB9LHsgIm1hdGhzLmxpYi92ZXJzaW9uIjogIjIuOC4wIiB9LHsgIm5hbWUiOiAiYWJjXzJkX3ZlY3RvcnMzIiB9LHsgInJvdXRlcy5saWIvbmFtZSI6ICJGYXVzdCBTaWduYWwgUm91dGluZyBMaWJyYXJ5IiB9LHsgInJvdXRlcy5saWIvdmVyc2lvbiI6ICIxLjIuMCIgfSx7ICJzaWduYWxzLmxpYi9uYW1lIjogIkZhdXN0IFNpZ25hbCBSb3V0aW5nIExpYnJhcnkiIH0seyAic2lnbmFscy5saWIvdmVyc2lvbiI6ICIxLjYuMCIgfV0sInVpIjogWyB7InR5cGUiOiAiaGdyb3VwIiwibGFiZWwiOiAidmVjdG9yVkUiLCJpdGVtcyI6IFsgeyJ0eXBlIjogInZncm91cCIsImxhYmVsIjogImFuZ2xlcyIsIml0ZW1zIjogWyB7InR5cGUiOiAibmVudHJ5IiwibGFiZWwiOiAiYTAiLCJzaG9ydG5hbWUiOiAiYTAiLCJhZGRyZXNzIjogIi92ZWN0b3JWRS9hbmdsZXMvYTAiLCJpbmRleCI6IDAsIm1ldGEiOiBbeyAidW5pdCI6ICJkZWciIH1dLCJpbml0IjogMCwibWluIjogLTM2MCwibWF4IjogMzYwLCJzdGVwIjogMX0seyJ0eXBlIjogIm5lbnRyeSIsImxhYmVsIjogImExIiwic2hvcnRuYW1lIjogImExIiwiYWRkcmVzcyI6ICIvdmVjdG9yVkUvYW5nbGVzL2ExIiwiaW5kZXgiOiA4LCJtZXRhIjogW3sgInVuaXQiOiAiZGVnIiB9XSwiaW5pdCI6IDkwLCJtaW4iOiAtMzYwLCJtYXgiOiAzNjAsInN0ZXAiOiAxfSx7InR5cGUiOiAibmVudHJ5IiwibGFiZWwiOiAiYTIiLCJzaG9ydG5hbWUiOiAiYTIiLCJhZGRyZXNzIjogIi92ZWN0b3JWRS9hbmdsZXMvYTIiLCJpbmRleCI6IDE2LCJtZXRhIjogW3sgInVuaXQiOiAiZGVnIiB9XSwiaW5pdCI6IDE4MCwibWluIjogLTM2MCwibWF4IjogMzYwLCJzdGVwIjogMX0seyJ0eXBlIjogIm5lbnRyeSIsImxhYmVsIjogImEzIiwic2hvcnRuYW1lIjogImEzIiwiYWRkcmVzcyI6ICIvdmVjdG9yVkUvYW5nbGVzL2EzIiwiaW5kZXgiOiAyNCwibWV0YSI6IFt7ICJ1bml0IjogImRlZyIgfV0sImluaXQiOiAyNzAsIm1pbiI6IC0zNjAsIm1heCI6IDM2MCwic3RlcCI6IDF9XX1dfV19AF9fX3NpbmNvc19zdHJldABfZGVzdHJveW15ZHNwAF9jbGFzc0luaXRteWRzcABfaW5zdGFuY2VDb25zdGFudHNteWRzcABfaW5zdGFuY2VDbGVhcm15ZHNwAF9jb21wdXRlbXlkc3AAX2FsbG9jYXRlbXlkc3AAX2dldEpTT05teWRzcABsdG1wMQBsdG1wMAAAAA==",
									"machinecode_size" : 9400,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "multichannelsignal", "", "" ],
									"patching_rect" : [ 11.0, 504.0, 81.0, 22.0 ],
									"sample_format" : 1,
									"serial_number" : "FXG2R2WQ4564 bits",
									"sourcecode" : "//--------------------------------------------------------------------------------------//\n//----------------------------------------abclib----------------------------------------//\n//\n//-------------------------FAUST CODE AND UTILITIES FOR MIXED MUSIC---------------------//\n//\n//-------BY ALAIN BONARDI, PAUL GOUTMANN, DAVID FIERRO & ADRIEN ZANNI - 2019-2024 ------//\n//---------------------CICM - MUSIDANSE LABORATORY - PARIS 8 UNIVERSITY-----------------//\n//--------------------------------------------------------------------------------------//\n//\ndeclare author \"Alain Bonardi, Paul Goutmann, David Fierro & Adrien Zanni\";\ndeclare licence \"LGPLv3\";\ndeclare name \"abc_2d_vectors3\";\n//\nimport(\"stdfaust.lib\");\n//\n//\nabc_2d_vectors_ui(nls) = vectorVE(laz)\nwith {\n\ta(i, nls) = nentry(\"h:vectorVE/v:angles/a%i [unit:deg]\", i * 360 / nls, -360, 360, 1);\n\tlaz = par(i, nls, a(i, nls));\n};\n//\nvectorVE(laz) = thisVectorVE\nwith{\n\tp = outputs(laz);\n\tang(i) = ba.take(i+1, laz);\n\tlx(p) = par(i, p, * (cos((ang(i) + 90) / 180 * ma.PI)));\n\tly(p) = par(i, p, * (sin((ang(i) + 90) / 180 * ma.PI)));\n\tclip(mini,maxi) = min(maxi, max(mini, _));\n\tparSquare(p) = par(i, p, ^(2));\n\tsumOfSquare(p) = par(i, p, _ <: (*)) :> _ ;\n\tsimpleSum(p) = si.bus(p) :> _ ;\n\tzeroException =  _ <: (_ == (0)) * ma.MIN, _  : + ;\n\tvx(p) = si.bus(2*p+2) : par(i, 2, (lx(p):simpleSum(p))), si.bus(2):route(4,4, 1, 1, 2, 3, 3, 4, 4, 2) : /, / : clip(-1, 1), clip(-1,1);\n\tvy(p) = si.bus(2*p+2) : par(i, 2, (ly(p):simpleSum(p))), si.bus(2):route(4,4, 1, 1, 2, 3, 3, 4, 4, 2) : /, / : clip(-1, 1), clip(-1,1);\n\tthisVectorVE = si.bus(p) <: si.bus(p), (parSquare(p)<:si.bus(p), (simpleSum(p):zeroException)), (simpleSum(p):zeroException) <: vx(p), vy(p) : ro.interleave(2, 2);\n};\n//\nclip(low, high, x) = min(max(x, low), high);\n//\nprocess = abc_2d_vectors_ui(4);\n",
									"sourcecode_size" : 1825,
									"text" : "mc.faustgen~",
									"varname" : "faustgen-6407112784",
									"version" : "1.72"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"midpoints" : [ 20.5, 531.0, 200.5, 531.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-12", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"midpoints" : [ 364.5, 437.0, 632.5, 437.0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"midpoints" : [ 364.5, 437.0, 20.5, 437.0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"midpoints" : [ 632.5, 549.0, 812.5, 549.0 ],
									"order" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 1 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 116.5, 528.0, 96.5, 528.0, 96.5, 499.0, 20.5, 499.0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"midpoints" : [ 728.5, 546.0, 708.5, 546.0, 708.5, 517.0, 632.5, 517.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 1 ],
									"source" : [ "obj-85", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-85", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"source" : [ "obj-9", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 1 ],
									"source" : [ "obj-91", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-91", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-104", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 49.0, 108.0, 59.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p analisis"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1307.0, 777.0 ],
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 721.0, 348.0, 334.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 741.0, 356.0, 334.0, 29.0 ],
									"text" : "Spherical harmonics until 3rd degree"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 348.0, 320.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 191.0, 360.0, 320.0, 29.0 ],
									"text" : "Circular harmonics until 3rd degree"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 9.0, 61.0, 629.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 64.0, 267.0, 29.0 ],
									"text" : "Introduction to the Formalism"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 10,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 746.0, 71.0, 523.0, 141.0 ],
									"presentation" : 1,
									"presentation_linecount" : 12,
									"presentation_rect" : [ 750.0, 168.0, 470.0, 167.0 ],
									"text" : "Michael A. Gerzon, « Periphony : With-Height Sound Reproduction », dans : J. Audio Eng. Soc 21.1 (1973), Presented March, 1972, at the 2nd Convention of the Central Europe Section of the Audio Engineering Society, Munich, Germany.\n\nJérôme Daniel, « Representation de champs acoustiques, application a la transmission et a la restitution de scenes sonores complexes dans un contexte multimedia », Thèse de doctorat. \n\nPierre Guillot, « La représentation intermédiaire et abstraite de l’espace comme outil de spatialisation du son », thèse de doct., Université Paris 8 - Vincennes-Saint-Denis UFR 1 - arts, philosophie, esthétique, déc. 2017, url : https://hal.archives-ouvertes.fr/tel-01903017,"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"linecount" : 18,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 5.0, 87.0, 737.0, 248.0 ],
									"presentation" : 1,
									"presentation_linecount" : 18,
									"presentation_rect" : [ 5.0, 89.0, 733.0, 248.0 ],
									"text" : "The ambisonic approach is based on decomposing the spherical (or circular) function associated with the pressure field at a listening point into an intermediate representation, followed by its reproduction using a diffusion system. Whether through capture with a sound field microphone or synthesis, encoding is performed at a single listening point, which will be the same point presented to the listener during playback.\n\nThe spherical harmonics, denoted as Ym,n  are organized by azimuthal order m and degree n (the degree can also be noted as l) \nThe number of harmonics used to describe the sound field depends on the decomposition order N and the number of dimensions.\n\nIn 2D, at order N, we use 2N+1 harmonics\nIn 3D, at order N, we use (N+1)^2 harmonics\n\nIn 2D, each degree n includes two harmonics with azimuthal order m = - n et m = n \n\nFor a so-called \"regular\" decoding in 2D, there must be at least as many loudspeakers as harmonics, with 2N+2 loudspeakers recommended.\nThese should be evenly spaced at equal angular distances from each other.\n\nIn 3D, regular decoding is a more complex matter (see Daniel’s thesis for further details)."
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 685.0, -6.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 653.0, 23.5, 97.0, 22.0 ],
									"text" : "abc.comment.bg"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-15",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpcredit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 734.0, 548.0, 41.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@obj-name", "Ambisonics", "Tutorial", "@obj-desc", "Encoding,", "decoding,", "formalism,", "analisis", "&", "example" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpheader.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"forceaspect" : 1,
									"id" : "obj-6",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 9.0, 376.0, 581.0, 320.887029288702934 ],
									"pic" : "harmonique_circulaire.png",
									"presentation" : 1,
									"presentation_rect" : [ 8.0, 388.0, 581.0, 320.887029288702934 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-27",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 746.0, 71.0, 525.242711246013641, 154.368929922580719 ],
									"presentation" : 1,
									"presentation_rect" : [ 750.0, 158.0, 470.0, 187.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.0, 61.0, 742.0, 273.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.0, 61.0, 742.0, 285.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"forceaspect" : 1,
									"id" : "obj-4",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 596.0, 376.0, 617.0, 356.508645533141248 ],
									"pic" : "harmonique_spherique.png",
									"presentation" : 1,
									"presentation_rect" : [ 595.0, 360.0, 617.0, 356.508645533141248 ],
									"yoffset" : -25.0
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-2",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 3.0, 338.0, 1218.0, 378.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 350.0, 1218.0, 378.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"order" : 2,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 34.0, 81.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p formalism"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 92.0, 1307.0, 777.0 ],
						"bglocked" : 1,
						"openinpresentation" : 1,
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
						"toolbars_unpinned_last_save" : 15,
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
						"showontab" : 2,
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 20.0,
									"id" : "obj-7",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 90.0, 629.0, 29.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 60.0, 233.0, 29.0 ],
									"text" : "2D Ambisonics: encoding"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 121.0, 386.0, 100.0 ],
									"presentation" : 1,
									"presentation_linecount" : 6,
									"presentation_rect" : [ 4.0, 87.0, 478.0, 87.0 ],
									"text" : "In practice, first-order ambisonic encoding of an acoustic field at a listening point consists of measuring (or calculating) the pressure (omnidirectional component W) as well as two pressure gradients along two orthogonal directions (bidirectional components X, Y). Whether through capture using a sound field microphone or synthesis, encoding is performed at a single listening point, which will be the same point presented to the listener during playback."
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 566.0, 103.0, 100.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 566.0, 60.0, 97.0, 22.0 ],
									"text" : "abc.comment.bg"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-6",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpcredit.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 3.0, 713.0, 331.0, 41.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 12.0, 734.0, 548.0, 41.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "@obj-name", "Ambisonics", "Tutorial", "@obj-desc", "Encoding,", "decoding,", "formalism,", "analisis", "&", "example" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-16",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "abc.helpheader.maxpat",
									"numinlets" : 1,
									"numoutlets" : 0,
									"offset" : [ 0.0, 0.0 ],
									"patching_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 4.0, 485.0, 61.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 823.666663999999855, 320.0, 152.0, 22.0 ],
									"text" : "loadmess compile scope.js"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "scope.js",
									"id" : "obj-4",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 823.666663999999855, 358.0, 203.333336000000145, 217.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 911.0, 315.0, 206.0, 215.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1337.0, 880.0, 45.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 196.0, 518.0, 45.0, 21.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 30.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1135.0, 954.0, 277.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 857.0, 399.0, 44.0, 40.0 ],
									"text" : "="
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-115",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1442.0, 831.0, 156.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 138.0, 395.0, 22.0, 17.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-116",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1427.0, 816.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 151.0, 395.0, 22.0, 17.0 ],
									"text" : "0.2"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-117",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1412.0, 801.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 168.0, 395.0, 22.0, 17.0 ],
									"text" : "0.4"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-118",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1397.0, 786.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 187.0, 395.0, 22.0, 17.0 ],
									"text" : "0.6"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-119",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1382.0, 771.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 206.0, 395.0, 22.0, 17.0 ],
									"text" : "0.8"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-120",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1423.0, 946.0, 156.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 228.0, 395.0, 17.0, 17.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-121",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1436.0, 895.0, 168.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 135.0, 405.0, 104.0, 20.0 ],
									"text" : "----|----|----|----|----|"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-122",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1120.0, 863.0, 264.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 237.0, 405.0, 33.0, 20.0 ],
									"text" : "270°"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "projection_trigonometrie.js",
									"id" : "obj-61",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 17.0, 350.0, 202.333328306674957, 191.999996110796928 ],
									"presentation" : 1,
									"presentation_rect" : [ 36.0, 319.0, 202.333327999999995, 191.99999600000001 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-29",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1427.0, 816.0, 156.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 428.0, 398.0, 22.0, 17.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1412.0, 801.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 441.0, 398.0, 22.0, 17.0 ],
									"text" : "0.2"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-31",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1397.0, 786.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 458.0, 398.0, 22.0, 17.0 ],
									"text" : "0.4"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1382.0, 771.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 477.0, 398.0, 22.0, 17.0 ],
									"text" : "0.6"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1423.0, 946.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 496.0, 398.0, 22.0, 17.0 ],
									"text" : "0.8"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-41",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1408.0, 931.0, 156.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 518.0, 398.0, 17.0, 17.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1421.0, 880.0, 168.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 425.0, 408.0, 104.0, 20.0 ],
									"text" : "----|----|----|----|----|"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1105.0, 848.0, 264.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 527.0, 408.0, 33.0, 20.0 ],
									"text" : "270°"
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "projection_trigonometrie.js",
									"id" : "obj-15",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 236.0, 351.0, 202.333327999999995, 191.99999600000001 ],
									"presentation" : 1,
									"presentation_rect" : [ 326.0, 325.0, 202.333327999999995, 191.99999600000001 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 0,
									"filename" : "projection_trigonometrie.js",
									"id" : "obj-55",
									"maxclass" : "jsui",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 455.0, 351.0, 202.333327999999995, 191.99999600000001 ],
									"presentation" : 1,
									"presentation_rect" : [ 621.0, 325.0, 202.333327999999995, 191.99999600000001 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-100",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1412.0, 801.0, 156.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 723.0, 399.0, 22.0, 17.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-97",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1397.0, 786.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 736.0, 399.0, 22.0, 17.0 ],
									"text" : "0.2"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-93",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1382.0, 771.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 753.0, 399.0, 22.0, 17.0 ],
									"text" : "0.4"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-85",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1423.0, 946.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 772.0, 399.0, 22.0, 17.0 ],
									"text" : "0.6"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-77",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1408.0, 931.0, 161.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 791.0, 399.0, 22.0, 17.0 ],
									"text" : "0.8"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.663157894736843,
									"id" : "obj-76",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1406.0, 918.0, 156.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 813.0, 399.0, 17.0, 17.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-69",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1406.0, 865.0, 168.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 720.0, 409.0, 104.0, 20.0 ],
									"text" : "----|----|----|----|----|"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1090.0, 833.0, 264.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 822.0, 409.0, 33.0, 20.0 ],
									"text" : "270°"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 4.0, 85.0, 386.0, 164.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 4.0, 60.0, 477.0, 116.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 30.0,
									"id" : "obj-142",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1120.0, 939.0, 277.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 562.0, 398.0, 33.0, 40.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontsize" : 30.0,
									"id" : "obj-141",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1105.0, 924.0, 277.0, 40.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 269.0, 402.0, 33.0, 40.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1156.0, 899.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 44.0, 255.0, 103.0, 20.0 ],
									"text" : "Positive values"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.985398828983307, 0.0, 0.033121161162853, 1.0 ],
									"id" : "obj-139",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1167.0, 640.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 11.0, 257.0, 31.0, 15.0 ],
									"proportion" : 0.505611672278339
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1141.0, 884.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 44.0, 229.0, 103.0, 20.0 ],
									"text" : "Negative values"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 0.017158545553684, 0.0, 0.998194456100464, 1.0 ],
									"id" : "obj-135",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1143.0, 640.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 11.0, 231.0, 31.0, 15.0 ],
									"proportion" : 0.505611672278339
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-128",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1180.0, 461.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 37.0, 315.0, 202.0, 202.0 ],
									"proportion" : 0.5,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-123",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1105.0, 848.0, 264.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 123.0, 518.0, 33.0, 20.0 ],
									"text" : "180°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-124",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1090.0, 833.0, 160.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 132.0, 300.0, 27.0, 20.0 ],
									"text" : "0°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-125",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1075.0, 818.0, 216.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 11.0, 407.0, 27.0, 20.0 ],
									"text" : "90°"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 10.0,
									"id" : "obj-126",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1051.0, 879.0, 28.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 82.0, 522.0, 28.0, 18.0 ],
									"text" : "G0"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-114",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1470.0, 495.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 327.0, 321.0, 202.0, 202.0 ],
									"proportion" : 0.5,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1090.0, 833.0, 264.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 413.0, 521.0, 33.0, 20.0 ],
									"text" : "180°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-67",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1075.0, 818.0, 160.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 422.0, 303.0, 27.0, 20.0 ],
									"text" : "0°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1060.0, 803.0, 216.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 301.0, 410.0, 27.0, 20.0 ],
									"text" : "90°"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 10.0,
									"id" : "obj-102",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1036.0, 864.0, 28.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 376.0, 528.0, 28.0, 18.0 ],
									"text" : "G1"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-107",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1173.0, 510.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 621.0, 319.0, 202.0, 202.0 ],
									"proportion" : 0.5,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1399.0, 850.0, 156.0, 20.0 ],
									"text" : "----|-----|---|----|----|"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-54",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1322.0, 865.0, 43.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 781.0, 522.0, 43.0, 21.0 ],
									"text" : "cos(θ)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1307.0, 850.0, 53.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 488.0, 521.0, 39.0, 21.0 ],
									"text" : "sin(θ)"
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-47",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1211.0, 465.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 903.0, 311.0, 221.0, 223.0 ],
									"proportion" : 0.5,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 10.85140018066847,
									"id" : "obj-46",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 85.0, 573.0, 82.0, 33.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 933.0, 281.0, 141.0, 20.0 ],
									"text" : "intermediate representation",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1075.0, 818.0, 264.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 708.0, 522.0, 33.0, 20.0 ],
									"text" : "180°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1060.0, 803.0, 160.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 717.0, 304.0, 27.0, 20.0 ],
									"text" : "0°"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1045.0, 788.0, 216.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 596.0, 411.0, 27.0, 20.0 ],
									"text" : "90°"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 513.0, 144.0, 150.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 87.0, 196.0, 129.0, 20.0 ],
									"text" : "Projection angle (θ)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 428.0, 149.0, 73.0, 22.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 10.0,
									"id" : "obj-105",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1021.0, 849.0, 28.0, 18.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 670.0, 528.0, 28.0, 18.0 ],
									"text" : "G2"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-98",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 481.0, 586.0, 49.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 622.0, 526.0, 47.0, 20.0 ],
									"sig" : 0.0,
									"style" : "rnbohighcontrast"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 481.0, 557.0, 36.0, 22.0 ],
									"text" : "r~ h1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-95",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 240.0, 586.0, 87.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 327.0, 526.0, 49.0, 20.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 240.0, 557.0, 40.0, 22.0 ],
									"text" : "r~ h-1"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-94",
									"maxclass" : "number~",
									"mode" : 2,
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "float" ],
									"patching_rect" : [ 9.0, 586.0, 88.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 36.0, 520.0, 46.0, 20.0 ],
									"sig" : 0.0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 9.0, 557.0, 36.0, 22.0 ],
									"text" : "r~ h0"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 16.0,
									"id" : "obj-88",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 534.0, 555.0, 246.0, 26.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 624.0, 279.0, 196.0, 26.0 ],
									"text" : "Harmonic 1, 1",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 16.0,
									"id" : "obj-87",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 297.0, 555.0, 130.0, 26.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 316.0, 279.0, 199.0, 26.0 ],
									"text" : "Harmonic -1, 1",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 2,
									"fontname" : "Ableton Sans Light",
									"fontsize" : 16.0,
									"id" : "obj-86",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 558.0, 106.0, 26.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 36.0, 278.0, 196.0, 26.0 ],
									"text" : "Harmonic 0",
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 455.0, 288.0, 32.0, 22.0 ],
									"text" : "+ 90"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 455.0, 258.0, 88.0, 22.0 ],
									"text" : "r angle_source"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 236.0, 291.0, 32.0, 22.0 ],
									"text" : "+ 90"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 236.0, 262.0, 88.0, 22.0 ],
									"text" : "r angle_source"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 11.0, 291.0, 32.0, 22.0 ],
									"text" : "+ 90"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 11.0, 262.0, 88.0, 22.0 ],
									"text" : "r angle_source"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "number",
									"maximum" : 360,
									"minimum" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 428.0, 182.0, 74.0, 22.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 11.0, 195.0, 74.0, 22.0 ],
									"varname" : "angle_source"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 428.0, 211.0, 90.0, 22.0 ],
									"text" : "s angle_source"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 11.0, 319.0, 57.0, 22.0 ],
									"text" : "cos $1 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 455.0, 320.0, 70.0, 22.0 ],
									"text" : "sin $1 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 236.0, 318.0, 70.0, 22.0 ],
									"text" : "cos $1 1."
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-48",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1322.0, 382.999998000000005, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 885.0, 282.0, 253.0, 267.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"forceaspect" : 1,
									"id" : "obj-36",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 18.0, 346.0, 200.0, 200.331674958540646 ],
									"pic" : "/Users/goutmann/Dropbox/UNIV_24_25/S2/MOUT/seance05/img/h0.png",
									"presentation" : 1,
									"presentation_rect" : [ 37.0, 316.0, 200.0, 200.331674958540646 ]
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"forceaspect" : 1,
									"id" : "obj-37",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 237.0, 347.0, 200.0, 200.0 ],
									"pic" : "/Users/goutmann/Dropbox/UNIV_24_25/S2/MOUT/seance05/img/h-1.png",
									"presentation" : 1,
									"presentation_rect" : [ 327.0, 322.0, 200.0, 200.0 ]
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"forceaspect" : 1,
									"id" : "obj-38",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 456.0, 347.0, 200.0, 200.0 ],
									"pic" : "/Users/goutmann/Dropbox/UNIV_24_25/S2/MOUT/seance05/img/h1.png",
									"presentation" : 1,
									"presentation_rect" : [ 622.0, 320.0, 200.0, 200.0 ]
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-43",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1298.0, 489.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 595.0, 282.0, 260.0, 269.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-113",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1197.0, 197.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 300.0, 282.0, 260.0, 269.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"border" : 1,
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-127",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1378.0, 190.0, 128.0, 128.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 7.0, 281.0, 260.0, 269.0 ],
									"proportion" : 0.5
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-9",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 821.333331999999928, 356.5, 208.0, 220.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 910.0, 316.0, 207.0, 214.0 ],
									"proportion" : 0.5
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"order" : 3,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 4,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"order" : 2,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"order" : 0,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"order" : 1,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "rnbodefault",
								"default" : 								{
									"accentcolor" : [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
									"bgcolor" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0.0,
										"color" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
										"color1" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
										"color2" : [ 0.263682, 0.004541, 0.038797, 1.0 ],
										"proportion" : 0.39,
										"type" : "color"
									}
,
									"color" : [ 0.929412, 0.929412, 0.352941, 1.0 ],
									"elementcolor" : [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
									"fontname" : [ "Lato" ],
									"fontsize" : [ 12.0 ],
									"stripecolor" : [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
									"textcolor_inverse" : [ 0.968627, 0.968627, 0.968627, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "rnbohighcontrast",
								"default" : 								{
									"accentcolor" : [ 0.666666666666667, 0.666666666666667, 0.666666666666667, 1.0 ],
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0.0,
										"color" : [ 0.0, 0.0, 0.0, 1.0 ],
										"color1" : [ 0.090196078431373, 0.090196078431373, 0.090196078431373, 1.0 ],
										"color2" : [ 0.156862745098039, 0.168627450980392, 0.164705882352941, 1.0 ],
										"proportion" : 0.5,
										"type" : "color"
									}
,
									"clearcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
									"color" : [ 1.0, 0.874509803921569, 0.141176470588235, 1.0 ],
									"editing_bgcolor" : [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
									"elementcolor" : [ 0.223386004567146, 0.254748553037643, 0.998085916042328, 1.0 ],
									"fontsize" : [ 13.0 ],
									"locked_bgcolor" : [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
									"selectioncolor" : [ 0.301960784313725, 0.694117647058824, 0.949019607843137, 1.0 ],
									"stripecolor" : [ 0.258823529411765, 0.258823529411765, 0.258823529411765, 1.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textcolor_inverse" : [ 1.0, 1.0, 1.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 13.0, 21.0, 67.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p encoding"
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-2::obj-34" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-2::obj-35" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-2::obj-5" : [ "mc.live.gain~[1]", "mc.live.gain~", 0 ],
			"obj-79::obj-17" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"obj-79::obj-34" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "abc.comment.bg.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/misc/others",
				"patcherrelativepath" : "../../../misc/others",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.helpcredit.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/misc/others",
				"patcherrelativepath" : "../../../misc/others",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.helpheader.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/misc/others",
				"patcherrelativepath" : "../../../misc/others",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.decoder~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.encoder~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc.hoa.optim~.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/patchers",
				"patcherrelativepath" : "../../../patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "abc_2d_decoder1_4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_multiencoder1_1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_multiencoder1_4~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_2d_optim1~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "abc_help_icon.png",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/media/images",
				"patcherrelativepath" : "../../../media/images",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "abc_wrp.js",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/javascript",
				"patcherrelativepath" : "../../../javascript",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "h-1.png",
				"bootpath" : "~/Dropbox/UNIV_24_25/S2/MOUT/seance05/img",
				"patcherrelativepath" : "../../../../../../../Dropbox/UNIV_24_25/S2/MOUT/seance05/img",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "h0.png",
				"bootpath" : "~/Dropbox/UNIV_24_25/S2/MOUT/seance05/img",
				"patcherrelativepath" : "../../../../../../../Dropbox/UNIV_24_25/S2/MOUT/seance05/img",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "h1.png",
				"bootpath" : "~/Dropbox/UNIV_24_25/S2/MOUT/seance05/img",
				"patcherrelativepath" : "../../../../../../../Dropbox/UNIV_24_25/S2/MOUT/seance05/img",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "harmonique_circulaire.png",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/media/images",
				"patcherrelativepath" : "../../../media/images",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "harmonique_spherique.png",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/media/images",
				"patcherrelativepath" : "../../../media/images",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "hp_1.png",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/media/images",
				"patcherrelativepath" : "../../../media/images",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "hp_2.png",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/media/images",
				"patcherrelativepath" : "../../../media/images",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "mc.faustgen~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "projection_trigonometrie.js",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/jsui",
				"patcherrelativepath" : "../../../jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "scope.js",
				"bootpath" : "~/Documents/Max 8/Packages/abclib/jsui",
				"patcherrelativepath" : "../../../jsui",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
