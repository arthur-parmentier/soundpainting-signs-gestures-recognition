{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 3,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -1646.0, -986.0, 1612.0, 899.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 705.0, 1410.0, 31.0, 22.0 ],
					"text" : "qlim"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-122",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1293.5, 1419.0, 156.0, 18.0 ],
					"text" : "Choose a parameter for dial 4"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-123",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1293.5, 1387.0, 156.0, 18.0 ],
					"text" : "Choose a parameter for dial 3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-124",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1293.5, 1355.0, 156.0, 18.0 ],
					"text" : "Choose a parameter for dial 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-125",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1293.5, 1323.0, 156.0, 18.0 ],
					"text" : "Choose a parameter for dial 1"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.6, 0.4, 0.733333333333333, 1.0 ],
					"bgfillcolor_color" : [ 0.6, 0.4, 0.733333333333333, 1.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "color",
					"elementcolor" : [ 0.552941176470588, 0.552941176470588, 0.552941176470588, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-126",
					"items" : "Gain",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1060.5, 1419.0, 233.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.6, 0.4, 0.733333333333333, 1.0 ],
					"bgfillcolor_color" : [ 0.6, 0.4, 0.733333333333333, 1.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "color",
					"elementcolor" : [ 0.552941176470588, 0.552941176470588, 0.552941176470588, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-127",
					"items" : "Gain",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1060.5, 1387.0, 233.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.6, 0.4, 0.733333333333333, 1.0 ],
					"bgfillcolor_color" : [ 0.6, 0.4, 0.733333333333333, 1.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "color",
					"elementcolor" : [ 0.552941176470588, 0.552941176470588, 0.552941176470588, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-128",
					"items" : "Gain",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1060.5, 1355.0, 233.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-129",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1069.5, 1467.0, 213.0, 18.0 ],
					"text" : "controller messages from the midiparse object",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-130",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1082.5, 1524.0, 179.0, 18.0 ],
					"text" : "<- double-click to see the patcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1069.5, 1497.0, 56.0, 20.0 ],
					"text" : "r mydials"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-132",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 10.0, 59.0, 643.0, 550.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-1",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 314.0, 399.0, 191.0, 0.0 ],
									"text" : "The zmap objects convert the 0-127 MIDI values to the range that VST parameters use (0.-1.0)"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 538.0, 474.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 339.0, 29.0, 140.0, 0.0 ],
									"text" : "MIDI controller messages",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 44.0, 474.0, 245.0, 0.0 ],
									"text" : "VST parameter messages for the vst~ object",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 474.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 5,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 339.0, 59.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 252.0, 59.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-8",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 176.0, 59.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 100.0, 59.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 23.0, 59.0, 15.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 252.0, 375.0, 33.0, 0.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 252.0, 401.0, 52.0, 0.0 ],
									"text" : "pak 0 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 293.0, 375.0, 94.0, 0.0 ],
									"text" : "zmap 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 176.0, 327.0, 33.0, 0.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 176.0, 353.0, 52.0, 0.0 ],
									"text" : "pak 0 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 218.0, 327.0, 94.0, 0.0 ],
									"text" : "zmap 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 100.0, 279.0, 33.0, 0.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 305.0, 52.0, 0.0 ],
									"text" : "pak 0 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 279.0, 94.0, 0.0 ],
									"text" : "zmap 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 23.0, 231.0, 33.0, 0.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 257.0, 52.0, 0.0 ],
									"text" : "pak 0 0."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-22",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 22.0, 29.0, 245.0, 0.0 ],
									"text" : "VST parameter numbers from the ubumenus Since ubumenu numbers from 0, we add 1....",
									"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 231.0, 94.0, 0.0 ],
									"text" : "zmap 0 127 0. 1."
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-24",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 293.0, 355.0, 35.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 0,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-25",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 218.0, 307.0, 35.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 0,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 142.0, 259.0, 35.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 0,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-27",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 65.0, 212.0, 35.0, 0.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"triangle" : 0,
									"triscale" : 0.9
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 339.0, 133.0, 213.0, 0.0 ],
									"text" : "route 74 71 76 77"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-29",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 351.0, 90.0, 229.0, 0.0 ],
									"text" : "The route object chooses only the controller numbers I want for my dials, and sends everything else out the right outlet"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-28", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-28", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-28", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-28", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1005.5, 1524.0, 77.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p dialhandler"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 949.5, 1200.0, 56.0, 20.0 ],
					"text" : "r vstdials"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-134",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1005.5, 1551.0, 55.0, 20.0 ],
					"text" : "s vstdials"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-135",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1310.5, 1041.0, 277.0, 41.0 ],
					"presentation_linecount" : 3,
					"text" : "The trigger and deferlow objects are used to delay loading the ubumenu with a list of plug-in parameters until the VST plug-in finishes loading."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-136",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1310.5, 1017.0, 277.0, 18.0 ],
					"text" : "The plug message is used to load a VST plug-in.",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.6, 0.4, 0.6, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_color1" : [ 0.6, 0.4, 0.6, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "gradient",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"gradient" : 1,
					"id" : "obj-137",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1228.5, 1131.0, 56.0, 20.0 ],
					"text" : "params"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-138",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "clear" ],
					"patching_rect" : [ 1228.5, 1155.0, 79.0, 20.0 ],
					"text" : "trigger l clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-139",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 929.5, 1416.0, 33.0, 33.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-140",
					"inc" : 1.071519017219543,
					"interp" : 60.0,
					"interpinlet" : 1,
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 952.5, 1281.0, 20.0, 108.0 ],
					"scale" : 7.943210124969482
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-141",
					"inc" : 1.071519017219543,
					"interpinlet" : 1,
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 2,
					"numoutlets" : 2,
					"orientation" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 930.5, 1281.0, 20.0, 108.0 ],
					"scale" : 7.943210124969482
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-142",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1228.5, 1067.0, 67.0, 20.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-143",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1228.5, 1041.0, 75.0, 20.0 ],
					"text" : "trigger b l"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.4, 0.4, 0.8, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_color1" : [ 0.4, 0.4, 0.8, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "gradient",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"gradient" : 1,
					"id" : "obj-144",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1228.5, 1017.0, 44.0, 20.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-145",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1310.5, 1214.0, 234.0, 41.0 ],
					"presentation_linecount" : 3,
					"text" : "You can see the plug-in's edit window by using the open message or double-clicking on the vst~ object",
					"textcolor" : [ 1.0, 0.36078431372549, 0.682352941176471, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1310.5, 1131.0, 389.0, 18.0 ],
					"text" : "The params message loads the four ubumenus with a listing of the plug-in parameters",
					"textcolor" : [ 0.6, 0.4, 0.6, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 0.36078431372549, 0.682352941176471, 1.0 ],
					"bgcolor2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_color1" : [ 1.0, 0.36078431372549, 0.682352941176471, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "gradient",
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"gradient" : 1,
					"id" : "obj-146",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1227.5, 1214.0, 68.0, 20.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-147",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1009.5, 1268.0, 90.0, 20.0 ],
					"text" : "prepend append"
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.6, 0.4, 0.733333333333333, 1.0 ],
					"bgfillcolor_color" : [ 0.6, 0.4, 0.733333333333333, 1.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 1 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1 ],
					"bgfillcolor_type" : "color",
					"elementcolor" : [ 0.552941176470588, 0.552941176470588, 0.552941176470588, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-148",
					"items" : "Gain",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1060.5, 1323.0, 233.0, 20.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 0,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-149",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 929.5, 1245.0, 212.0, 20.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[1]",
							"parameter_shortname" : "vst~[1]",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"autosave" : 0,
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"text" : "vst~",
					"varname" : "vst~[1]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-150",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 995.5, 1040.0, 52.0, 20.0 ],
					"text" : "s mydials"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.890196078431372, 0.090196078431373, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-151",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"patching_rect" : [ 929.5, 1096.0, 82.0, 20.0 ],
					"text" : "qs.vstizer"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-152",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 995.5, 1074.0, 44.0, 20.0 ],
					"text" : "r other"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-153",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1072.5, 1551.0, 43.0, 20.0 ],
					"text" : "s other"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-154",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1072.5, 1572.0, 244.0, 18.0 ],
					"text" : "send all other controller messages back to the vstizer",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 929.5, 990.0, 46.0, 20.0 ],
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.890196078431372, 0.090196078431373, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-156",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 929.5, 1017.0, 210.0, 20.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-157",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 977.5, 991.0, 295.0, 18.0 ],
					"text" : "<- double-click on this object to select a MIDI input source"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 939.0, 823.0, 53.0, 20.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-98",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 939.0, 845.0, 27.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 938.0, 868.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-100",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 981.0, 845.0, 28.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-101",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1060.0, 845.0, 28.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-102",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1017.0, 845.0, 27.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1017.0, 823.0, 53.0, 20.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-104",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1138.0, 845.0, 28.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-105",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1095.0, 845.0, 27.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 1095.0, 823.0, 53.0, 20.0 ],
					"text" : "unpack"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-107",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1173.0, 845.0, 28.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1173.0, 868.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 0.890196078431372, 0.090196078431373, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-109",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 939.0, 797.0, 478.0, 20.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-110",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1039.0, 624.0, 265.0, 29.0 ],
					"presentation_linecount" : 2,
					"text" : "Here's what a MIDI \"note on\" message looks like. A \"note off\" have a 0 (no velocity) as the third message",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-111",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1039.0, 664.0, 267.0, 29.0 ],
					"presentation_linecount" : 2,
					"text" : "Same as above, but it's on channel 2, so the first number is one more than 144 (channel 1 + 1)",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-112",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1039.0, 704.0, 289.0, 29.0 ],
					"presentation_linecount" : 2,
					"text" : "Here's a MIDI controller message. The second int is the controller number, and the third is the controller value.",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-113",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1039.0, 744.0, 306.0, 41.0 ],
					"presentation_linecount" : 3,
					"text" : "Here's a pitch bend message. In this case, we're sending TWO messages to set the pitch bend amount (the max. pitch wheel setting is 127 127, minimum is 0 0)",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 961.0, 744.0, 74.0, 20.0 ],
					"text" : "224, 95, 95"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-114",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 961.0, 703.0, 74.0, 20.0 ],
					"text" : "176, 55, 65"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 962.0, 662.0, 75.0, 20.0 ],
					"text" : "145, 60, 70"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 962.0, 624.0, 73.0, 20.0 ],
					"text" : "144, 60, 70"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-26",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1407.0, 845.0, 28.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1407.0, 868.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1329.0, 845.0, 28.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1329.0, 868.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1251.0, 868.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.866666666666667, 0.866666666666667, 0.866666666666667, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-115",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1251.0, 845.0, 28.0, 20.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"triangle" : 0,
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1017.0, 868.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1095.0, 868.0, 15.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-118",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1016.0, 886.0, 71.0, 18.0 ],
					"text" : "Poly Pressure",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 938.0, 886.0, 62.0, 18.0 ],
					"text" : "Note On/Off",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1095.0, 886.0, 90.0, 18.0 ],
					"text" : "Controller Change",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1407.0, 886.0, 70.0, 18.0 ],
					"text" : "MIDI Channel",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-119",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1251.0, 886.0, 69.0, 18.0 ],
					"text" : "Aftertouch",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-120",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1172.0, 886.0, 85.0, 18.0 ],
					"text" : "Program Change",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-40",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1329.0, 886.0, 63.0, 18.0 ],
					"text" : "Pitch bend",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"id" : "obj-121",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 962.0, 605.0, 405.0, 18.0 ],
					"text" : "MIDI messages are send as a sequence of three integers. Here are some examples....",
					"textcolor" : [ 0.4, 0.4, 0.8, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.0, 570.0, 62.0, 22.0 ],
					"text" : "145 160 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 314.5, 780.0, 107.0, 22.0 ],
					"text" : "prepend midievent"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 3,
					"outlettype" : [ "float", "float", "float" ],
					"patching_rect" : [ 150.0, 705.0, 111.0, 22.0 ],
					"text" : "makenote 127 10 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "kslider",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 150.0, 645.0, 336.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 525.0, 885.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 585.0, 915.0, 50.0, 36.0 ],
					"text" : "\"Pad Y4\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 603.5, 825.0, 49.0, 22.0 ],
					"text" : "params"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"local" : 1,
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 405.0, 870.0, 44.0, 44.0 ]
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-64",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 526.0, 675.0, 184.0, 25.0 ],
					"text" : "close the interface window"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-65",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 526.0, 629.5, 214.0, 40.0 ],
					"presentation_linecount" : 2,
					"text" : "open the interface window (or double click on vst~ object box)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-66",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 526.0, 602.0, 173.0, 25.0 ],
					"text" : "select and load a plug-in"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 526.0, 777.0, 241.0, 25.0 ],
					"text" : "mute effect and echo input to output"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 755.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-71",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 780.0, 70.0, 23.0 ],
					"text" : "bypass $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 450.0, 705.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-39",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 450.0, 730.0, 70.0, 23.0 ],
					"text" : "disable $1"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-92",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 526.0, 727.0, 162.0, 25.0 ],
					"text" : "mute effect processing"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-75",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.0, 678.0, 70.0, 23.0 ],
					"text" : "wclose"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-77",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.0, 640.0, 70.0, 23.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-78",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 449.0, 605.0, 70.0, 23.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 405.0, 825.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Grace.dll",
							"plugindisplayname" : "Grace",
							"pluginsavedname" : "~/Desktop/PDM outils externes/Grace/Grace.dll",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "12649.CMlaKA....fQPMDZ....ATiLTcG...P.....APTYlEVcrQG..............................DSK77CdswFH1Ulbyk1at0iHw3BLh.RYtM1ajklam0iH0QmYsfiH+3COx81az4COGw1ahEFaPElbg0VYzUlby4COV8VZiUVSuQVY9.0arkGOuX0aoMVYM8FYk4COV8VZiU1QrkFYk4CL77hUuk1XkcDaoQVY9vyKGw1ahEFaPElbg0VYzUlby4COSEVavwVYGI2a0AmO73TXsUlOGI2a0AGHwvyKNEVak4CORU1Yo8la9viTkcVZu4FTx8FbkIGcoU1b9vCSucmSuQWY9.COuvza24zazUlO7fTZmglSuQWY9DiL2vyKHk1Yn4zazUlO7vza2YUYr81XoQWd9.COuvza2YUYr81XoQWd9vCRocFZVUFauMVZzkmOwHyM77BRocFZVUFauMVZzkmO7H0auQmSuQWY9XCL77hTu8FcN8Fck4COSEVavwVYSQWXxQmOvvyKSEVavwVYSQWXxQmO7LUXsAGakUjaj4yLyfSL3LCOuLUXsAGakUjaj4COL81avMEcgIGc9zRL77BSu8FbSQWXxQmO7vzauAWQtQlOsDCOuvzauAWQtQlO7LUXsAGakITYgQ2b9PCOuLUXsAGakITYgQ2b9vyTg0FbrUlUuwVcsUlO2vyKSEVavwVYV8Fa00VY9vyTg0FbrUFTg4lOvvyKSEVavwVYPEla9vyTg0FbrUFU04VY9.COuLUXsAGakQUctUlO7LUXsAGakYTZtUlOvvyKSEVavwVYFklak4COuHUYmk1atAkbuAWYxQWZkMmO7LUXsAGakAkbuAWYxQWZkMmO7LUXsAGakYTZrUlSg0VY9LjNbU0bkI2bbQVYrwFWDU1bqQ2avw0Tu41bf.2a0IGHi8Vav81boQWZu4FHAIFakQ2atABSoYWYbIVYrw1bf31azU1bbEyLwLCM370WqE1atEVdg80WhUFar0RXz0BYgkFcusVcpkVKzUVavwVYsrVduQ2atbWX1wyKSEVavwVYFkFak4TXsUlO7LUXsAGakYjbg0VYy4yLyfSL3PCOuLUXsAGakYjbg0VYy4COuLUXsAGakAkbuAWYxQWZkMmO77hTkcVZu4lO7X0aoMVYPElbg0VYzUlby4COPkFcigFUxE1Xqklam4iSuQWY77BToQ2XnQkbgM1Zo41Y9vyTg0FbrUlTkMWYz4iSu4VY77xTg0FbrUlTkMWYz4COSEVavwVYxwzauAmPuUmajMmOL81avA0ao4FcywyKSEVavwVYxwzauAmPuUmajMmO7LUXsAGakIGUxk1YmUlbM8FYk4yStU1Tn8Fc77xTg0FbrUlbTIWZmcVYx0zajUlO7XTZrQWYxI0a0QWZtclOSUlboEFa77hQowFckImTuUGco41Y9viQowFckIWLTkGbk4iYz4zatUFOuXTZrQWYxECU4AWY9viQowFckImLTkGbk4iYz4zatUFOuXTZrQWYxICU4AWY9viQowFckIWLKUVdF8Far81c9.iK0vyKFkFazUlbwrTY4Yzarw1a24COFkFazUlbxrTY4Yzarw1a24CLtTCOuXTZrQWYxIyRkkmQuwFaucmO7DTavYUYr81XoQWdDUFbzglOVUFa3.COuDTavYUYr81XoQWdDUFbzglO7zzajYUYr81XoQWdDUFbzglOVUFa3.COuzzajYUYr81XoQWdDUFbzglO7vjYuMEZgAWYw3CUxkVXtcFakwyKLY1aSgVXvUVL9vCSl81TnEFbkIiOTIWZg41YrUFOuvjYuMEZgAWYx3COLY1aFIWYw0zajUVL9XTZ3UFYw.CLMkFark1bkM1atQFOuvjYuYjbkEWSuQVYw3COLY1aFIWYw0zajUlL9XTZ3UFYw.CLMkFark1bkM1atQFOuvjYuYjbkEWSuQVYx3COSUVbwLDauM1Z9PTZ18EM77xTkEWLCw1aislO7LUYwECQoIWYiQWZu4lOF8lb2ElbjMGOuLUYwECQoIWYiQWZu4lO7LEckA2TkEWLLUlamQGZ9TTZmgFc77xTzUFbSUVbwvTYtcFcn4COSUVbxLDauM1Z9PTZ18EM77xTkEmLCw1aislO7LUYwICQoIWYiQWZu4lOF8lb2ElbjMGOuLUYwICQoIWYiQWZu4lO7LEckA2TkEmLLUlamQGZ9TTZmgFc77xTzUFbSUVbxvTYtcFcn4COA0FbE4lcS4VXv4yTtEFbOYlY77RPsAWQtY2TtEFb9vSSuQVQtY2TtEFb9LkagA2SlYFOuzzajUja1MkagAmO77TczAWczcTXo4lOv3RMwPSN4jSN3TiM4PCN3TCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77xS0QGb0Q2Qgkla9vyS0QGb0QGTg4lOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKOUGcvUGcPEla9viUuk1XkAUZzMFZO4VY9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuX0aoMVYPkFcig1StUlO7X0aoMVYPkFcigFU28lOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKV8VZiUFToQ2XnQ0cu4COSEVavwVYSQWXxQmOvvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuLUXsAGakMEcgIGc9vyTg0FbrUVQtQlOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuLUXsAGakUjaj4COL81avMEcgIGc9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSu8FbSQWXxQmO7vzauAWQtQlOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvzauAWQtQlO7DTavEDczE1Xq4CL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKA0FbAQGcgM1Z9vSPsAGRuwFY9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RPsAGRuwFY9vSPsAGQkMVX44CLtLCLv.CLv.SLwjiLvjiL4vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuDTavQTYiEVd9vSPsA2T0MGcgkla9.iKy.CLv.CLvDSL4HCL4HSN7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKA0FbSU2bzEVZt4COA0FbRUFakE1bk4CLtLCLv.CLv.SLwjiLvjiL4vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuDTavIUYrUVXyUlO7zzajEDczE1Xq4CL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKM8FYAQGcgM1Z9vSSuQFRuwFY9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RSuQFRuwFY9vSSuQFQkMVX44CLtLCLv.CLv.SLwjiLvjiL4vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuzzajQTYiEVd9vSSuQ1T0MGcgkla9.iKy.CLv.CLvDSL4HCL4HSN7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKM8FYSU2bzEVZt4COM8FYRUFakE1bk4CLtLCLv.CLv.SLwjiLvjiL4vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuzzajIUYrUVXyUlO7XTZrQWYx8TczAWczIDak4FY9DCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckI2S0QGb0QmPrUlaj4COFkFazUlbw.UXxEiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbw.UXxEiO7XTZrQWYxECTgImL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxECTgImL9viQowFckIWLPElby3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckIWLPElby3COFkFazUlbw.UXxQiOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxECTgIGM9viQowFckImLPElbw3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckImLPElbw3COFkFazUlbx.UXxIiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbx.UXxIiO7XTZrQWYxICTgI2L9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxICTgI2L9viQowFckImLPElbz3SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbx.UXxQiO7vjYuECTgIWL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvjYuECTgIWL9vCSl8VLPElbx3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSl8VLPElbx3COLY1aw.UXxMiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKLY1aw.UXxMiO7vjYuICTgIWL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvjYuICTgIWL9vCSl8lLPElbx3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSl8lLPElbx3COLY1ax.UXxMiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKLY1ax.UXxMiO77hUuk1XkAUXxEVakQWYxMmO7LEckA2TkEWL9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyKSQWYvMUYwEiO7LEckA2TkEmL9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyKSQWYvMUYwIiO7zzajMzat4VYiQWZu41b9vSSuQFSo41Z9vSSuQ1TuUmbiUlOA0FbE4lceUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOM8FYE4lceUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOLY1aw7UUtkFbuwVXxwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COM8FYLklaq4COM8FYS8VcxMVY9vjYuIyWU4VZv8FagIGOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO7zzajwTZtslO7zzajM0a0I2Xk4yTzUFbSUVbw7UUtkFbuwVXxwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COM8FYLklaq4COM8FYS8VcxMVY9LEckA2TkEmLeUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOMkFYo8USuQ1UnUVYr8UUtkFbuwVXxwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COM8FYLklaq4COM8FYS8VcxMVY93zatUFOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO77RSuQ1Pu4lakMFco8lay4COuLUXsAGakcjbuUGb9vCTgQ2XnYTZrUlQuIWagQmUkI2bo8la9PCOu.UXzMFZFkFakYzax0VXzYUYxMWZu4lO7.UXzMFZFkFakQUdvUlOLU2XoQVZzkGTgQ2XnYTZrUFOu.UXzMFZFkFakQUdvUlO7.kbkMWYzkjal8lO7.kbkMWYz4TXsUlODUlYgUGazwyKPIWYyUFcNEVak4COPIWYyUFcFkFak4TXsU1K9vyKPIWYyUFcI4lYu4COMkFYo0TXv8hO77hbu8Fc9."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Grace",
									"origin" : "Grace.dll",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Grace.dll",
										"plugindisplayname" : "Grace",
										"pluginsavedname" : "~/Desktop/PDM outils externes/Grace/Grace.dll",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "12649.CMlaKA....fQPMDZ....ATiLTcG...P.....APTYlEVcrQG..............................DSK77CdswFH1Ulbyk1at0iHw3BLh.RYtM1ajklam0iH0QmYsfiH+3COx81az4COGw1ahEFaPElbg0VYzUlby4COV8VZiUVSuQVY9.0arkGOuX0aoMVYM8FYk4COV8VZiU1QrkFYk4CL77hUuk1XkcDaoQVY9vyKGw1ahEFaPElbg0VYzUlby4COSEVavwVYGI2a0AmO73TXsUlOGI2a0AGHwvyKNEVak4CORU1Yo8la9viTkcVZu4FTx8FbkIGcoU1b9vCSucmSuQWY9.COuvza24zazUlO7fTZmglSuQWY9DiL2vyKHk1Yn4zazUlO7vza2YUYr81XoQWd9.COuvza2YUYr81XoQWd9vCRocFZVUFauMVZzkmOwHyM77BRocFZVUFauMVZzkmO7H0auQmSuQWY9XCL77hTu8FcN8Fck4COSEVavwVYSQWXxQmOvvyKSEVavwVYSQWXxQmO7LUXsAGakUjaj4yLyfSL3LCOuLUXsAGakUjaj4COL81avMEcgIGc9zRL77BSu8FbSQWXxQmO7vzauAWQtQlOsDCOuvzauAWQtQlO7LUXsAGakITYgQ2b9PCOuLUXsAGakITYgQ2b9vyTg0FbrUlUuwVcsUlO2vyKSEVavwVYV8Fa00VY9vyTg0FbrUFTg4lOvvyKSEVavwVYPEla9vyTg0FbrUFU04VY9.COuLUXsAGakQUctUlO7LUXsAGakYTZtUlOvvyKSEVavwVYFklak4COuHUYmk1atAkbuAWYxQWZkMmO7LUXsAGakAkbuAWYxQWZkMmO7LUXsAGakYTZrUlSg0VY9LjNbU0bkI2bbQVYrwFWDU1bqQ2avw0Tu41bf.2a0IGHi8Vav81boQWZu4FHAIFakQ2atABSoYWYbIVYrw1bf31azU1bbEyLwLCM370WqE1atEVdg80WhUFar0RXz0BYgkFcusVcpkVKzUVavwVYsrVduQ2atbWX1wyKSEVavwVYFkFak4TXsUlO7LUXsAGakYjbg0VYy4yLyfSL3PCOuLUXsAGakYjbg0VYy4COuLUXsAGakAkbuAWYxQWZkMmO77hTkcVZu4lO7X0aoMVYPElbg0VYzUlby4COPkFcigFUxE1Xqklam4iSuQWY77BToQ2XnQkbgM1Zo41Y9vyTg0FbrUlTkMWYz4iSu4VY77xTg0FbrUlTkMWYz4COSEVavwVYxwzauAmPuUmajMmOL81avA0ao4FcywyKSEVavwVYxwzauAmPuUmajMmO7LUXsAGakIGUxk1YmUlbM8FYk4yStU1Tn8Fc77xTg0FbrUlbTIWZmcVYx0zajUlO7XTZrQWYxI0a0QWZtclOSUlboEFa77hQowFckImTuUGco41Y9viQowFckIWLTkGbk4iYz4zatUFOuXTZrQWYxECU4AWY9viQowFckImLTkGbk4iYz4zatUFOuXTZrQWYxICU4AWY9viQowFckIWLKUVdF8Far81c9.iK0vyKFkFazUlbwrTY4Yzarw1a24COFkFazUlbxrTY4Yzarw1a24CLtTCOuXTZrQWYxIyRkkmQuwFaucmO7DTavYUYr81XoQWdDUFbzglOVUFa3.COuDTavYUYr81XoQWdDUFbzglO7zzajYUYr81XoQWdDUFbzglOVUFa3.COuzzajYUYr81XoQWdDUFbzglO7vjYuMEZgAWYw3CUxkVXtcFakwyKLY1aSgVXvUVL9vCSl81TnEFbkIiOTIWZg41YrUFOuvjYuMEZgAWYx3COLY1aFIWYw0zajUVL9XTZ3UFYw.CLMkFark1bkM1atQFOuvjYuYjbkEWSuQVYw3COLY1aFIWYw0zajUlL9XTZ3UFYw.CLMkFark1bkM1atQFOuvjYuYjbkEWSuQVYx3COSUVbwLDauM1Z9PTZ18EM77xTkEWLCw1aislO7LUYwECQoIWYiQWZu4lOF8lb2ElbjMGOuLUYwECQoIWYiQWZu4lO7LEckA2TkEWLLUlamQGZ9TTZmgFc77xTzUFbSUVbwvTYtcFcn4COSUVbxLDauM1Z9PTZ18EM77xTkEmLCw1aislO7LUYwICQoIWYiQWZu4lOF8lb2ElbjMGOuLUYwICQoIWYiQWZu4lO7LEckA2TkEmLLUlamQGZ9TTZmgFc77xTzUFbSUVbxvTYtcFcn4COA0FbE4lcS4VXv4yTtEFbOYlY77RPsAWQtY2TtEFb9vSSuQVQtY2TtEFb9LkagA2SlYFOuzzajUja1MkagAmO77TczAWczcTXo4lOv3RMwPSN4jSN3TiM4PCN3TCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77xS0QGb0Q2Qgkla9vyS0QGb0QGTg4lOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKOUGcvUGcPEla9viUuk1XkAUZzMFZO4VY9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuX0aoMVYPkFcig1StUlO7X0aoMVYPkFcigFU28lOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKV8VZiUFToQ2XnQ0cu4COSEVavwVYSQWXxQmOvvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuLUXsAGakMEcgIGc9vyTg0FbrUVQtQlOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuLUXsAGakUjaj4COL81avMEcgIGc9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSu8FbSQWXxQmO7vzauAWQtQlOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvzauAWQtQlO7DTavEDczE1Xq4CL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKA0FbAQGcgM1Z9vSPsAGRuwFY9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RPsAGRuwFY9vSPsAGQkMVX44CLtLCLv.CLv.SLwjiLvjiL4vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuDTavQTYiEVd9vSPsA2T0MGcgkla9.iKy.CLv.CLvDSL4HCL4HSN7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKA0FbSU2bzEVZt4COA0FbRUFakE1bk4CLtLCLv.CLv.SLwjiLvjiL4vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuDTavIUYrUVXyUlO7zzajEDczE1Xq4CL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKM8FYAQGcgM1Z9vSSuQFRuwFY9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RSuQFRuwFY9vSSuQFQkMVX44CLtLCLv.CLv.SLwjiLvjiL4vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuzzajQTYiEVd9vSSuQ1T0MGcgkla9.iKy.CLv.CLvDSL4HCL4HSN7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKM8FYSU2bzEVZt4COM8FYRUFakE1bk4CLtLCLv.CLv.SLwjiLvjiL4vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuzzajIUYrUVXyUlO7XTZrQWYx8TczAWczIDak4FY9DCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckI2S0QGb0QmPrUlaj4COFkFazUlbw.UXxEiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbw.UXxEiO7XTZrQWYxECTgImL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxECTgImL9viQowFckIWLPElby3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckIWLPElby3COFkFazUlbw.UXxQiOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxECTgIGM9viQowFckImLPElbw3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckImLPElbw3COFkFazUlbx.UXxIiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbx.UXxIiO7XTZrQWYxICTgI2L9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxICTgI2L9viQowFckImLPElbz3SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbx.UXxQiO7vjYuECTgIWL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvjYuECTgIWL9vCSl8VLPElbx3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSl8VLPElbx3COLY1aw.UXxMiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKLY1aw.UXxMiO7vjYuICTgIWL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvjYuICTgIWL9vCSl8lLPElbx3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSl8lLPElbx3COLY1ax.UXxMiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKLY1ax.UXxMiO77hUuk1XkAUXxEVakQWYxMmO7LEckA2TkEWL9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyKSQWYvMUYwEiO7LEckA2TkEmL9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyTzUFbVEFa0UlOvvyKSQWYvYUXrUWY9vyKSQWYvMUYwIiO7zzajMzat4VYiQWZu41b9vSSuQFSo41Z9vSSuQ1TuUmbiUlOA0FbE4lceUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOM8FYE4lceUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOLY1aw7UUtkFbuwVXxwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COM8FYLklaq4COM8FYS8VcxMVY9vjYuIyWU4VZv8FagIGOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO7zzajwTZtslO7zzajM0a0I2Xk4yTzUFbSUVbw7UUtkFbuwVXxwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COM8FYLklaq4COM8FYS8VcxMVY9LEckA2TkEmLeUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOMkFYo8USuQ1UnUVYr8UUtkFbuwVXxwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COM8FYLklaq4COM8FYS8VcxMVY93zatUFOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO77RSuQ1Pu4lakMFco8lay4COuLUXsAGakcjbuUGb9vCTgQ2XnYTZrUlQuIWagQmUkI2bo8la9PCOu.UXzMFZFkFakYzax0VXzYUYxMWZu4lO7.UXzMFZFkFakQUdvUlOLU2XoQVZzkGTgQ2XnYTZrUFOu.UXzMFZFkFakQUdvUlO7.kbkMWYzkjal8lO7.kbkMWYz4TXsUlODUlYgUGazwyKPIWYyUFcNEVak4COPIWYyUFcFkFak4TXsU1K9vyKPIWYyUFcI4lYu4COMkFYo0TXv8hO77hbu8Fc9."
									}
,
									"fileref" : 									{
										"name" : "Grace",
										"filename" : "Grace.maxsnap",
										"filepath" : "D:/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "480e2d60e6c9e1ad861defe42060b627"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-4",
					"maxclass" : "flonum",
					"maximum" : 0.999,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1080.0, 240.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1080.0, 270.0, 196.0, 22.0 ],
					"text" : "expr pow(-($f1)/($f1-1)\\,1.5) + 0.001"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-9",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1080.0, 300.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1080.0, 330.0, 210.0, 22.0 ],
					"text" : "setclock numerics1/minimalism mul 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1295.5, 270.0, 158.0, 22.0 ],
					"presentation_linecount" : 3,
					"text" : "clock numerics1/minimalism"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 558.071428571428442, 30.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-76",
					"maxclass" : "flonum",
					"maximum" : 0.999,
					"minimum" : 0.0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 240.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 270.0, 196.0, 22.0 ],
					"text" : "expr pow(-($f1)/($f1-1)\\,1.5) + 0.001"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-72",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 300.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 420.0, 330.0, 196.0, 22.0 ],
					"text" : "setclock numerics1/longtone mul 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 630.0, 270.0, 144.0, 22.0 ],
					"text" : "clock numerics1/longtone"
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 80100,
					"defaultnoteslots" : [ "null" ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-60",
					"loop" : [ "[", 1, 1, 0, "]", "[", 1, 2, 0, "]" ],
					"maxclass" : "bach.score",
					"numinlets" : 7,
					"numoutlets" : 9,
					"numvoices" : 1,
					"out" : "nnnnnnnn",
					"outlettype" : [ "", "", "", "", "", "", "", "", "bang" ],
					"patching_rect" : [ 775.5, 360.0, 526.0, 120.0 ],
					"pitcheditrange" : [ "null" ],
					"showloop" : 1,
					"stafflines" : [ 5 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"versionnumber" : 80100,
					"voicenames" : [ "[", "]" ],
					"voicespacing" : [ 0.0, 26.0 ],
					"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 2, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 3, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 4, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 5, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "]", "[", "midichannels", 1, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085993984, 100, 0, 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085865984, 100, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085814784, 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085891584, 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]" ],
					"whole_score_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1210.5, 525.0, 50.0, 22.0 ],
					"text" : "69 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1315.5, 495.0, 120.0, 22.0 ],
					"text" : "bach.llll 2202"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1320.0, 360.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 1210.071428571428442, 495.0, 95.0, 22.0 ],
					"text" : "bach.ezmidiplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1320.0, 420.0, 47.0, 22.0 ],
					"text" : "loop all"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1320.0, 390.0, 76.0, 22.0 ],
					"text" : "showloop $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1005.0, 270.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1005.0, 300.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1005.0, 330.0, 67.0, 22.0 ],
					"text" : "useloop $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 121.0, 107.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 355.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-411",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 250.0, 291.0, 62.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-408",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 130.0, 79.0, 22.0 ],
									"text" : "o.pack /delay"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-405",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 190.0, 291.0, 32.0 ],
									"text" : "/time/delayed = /time/actual + /delay"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-404",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 160.0, 123.0, 22.0 ],
									"text" : "o.timetag /time/actual"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-401",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 325.0, 141.0, 22.0 ],
									"text" : "o.schedule /time/delayed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 197.0, 41.0, 22.0 ],
									"text" : "pause"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-91",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-92",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 439.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-408", 0 ],
									"source" : [ "obj-401", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-405", 0 ],
									"source" : [ "obj-404", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-411", 0 ],
									"source" : [ "obj-405", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-404", 0 ],
									"source" : [ "obj-408", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-411", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-58", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-401", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 780.0, 300.0, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p delayed_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 121.0, 107.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 355.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-411",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 250.0, 291.0, 62.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-408",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 130.0, 79.0, 22.0 ],
									"text" : "o.pack /delay"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-405",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 190.0, 291.0, 32.0 ],
									"text" : "/time/delayed = /time/actual + /delay"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-404",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 160.0, 123.0, 22.0 ],
									"text" : "o.timetag /time/actual"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-401",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 325.0, 141.0, 22.0 ],
									"text" : "o.schedule /time/delayed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 197.0, 41.0, 22.0 ],
									"text" : "pause"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-91",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-92",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 439.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-408", 0 ],
									"source" : [ "obj-401", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-405", 0 ],
									"source" : [ "obj-404", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-411", 0 ],
									"source" : [ "obj-405", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-404", 0 ],
									"source" : [ "obj-408", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-411", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-58", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-401", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 885.0, 300.0, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p delayed_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 780.0, 270.0, 155.0, 22.0 ],
					"text" : "o.route /Off /Continue /Start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 780.0, 240.0, 113.0, 22.0 ],
					"text" : "o.route /minimalism"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 780.0, 330.0, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 885.0, 330.0, 31.0, 22.0 ],
					"text" : "play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 15.0, 555.0, 75.0, 22.0 ],
					"text" : "cage.looper"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 270.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 330.0, 300.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 330.0, 330.0, 67.0, 22.0 ],
					"text" : "useloop $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 121.0, 107.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 355.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-411",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 250.0, 291.0, 34.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-408",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 130.0, 79.0, 22.0 ],
									"text" : "o.pack /delay"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-405",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 190.0, 291.0, 32.0 ],
									"text" : "/time/delayed = /time/actual + /delay"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-404",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 160.0, 123.0, 22.0 ],
									"text" : "o.timetag /time/actual"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-401",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 325.0, 141.0, 22.0 ],
									"text" : "o.schedule /time/delayed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 197.0, 41.0, 22.0 ],
									"text" : "pause"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-91",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-92",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 439.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-408", 0 ],
									"source" : [ "obj-401", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-405", 0 ],
									"source" : [ "obj-404", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-411", 0 ],
									"source" : [ "obj-405", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-404", 0 ],
									"source" : [ "obj-408", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-411", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-58", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-401", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 105.0, 300.0, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p delayed_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 3,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 121.0, 107.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 355.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-411",
									"maxclass" : "o.display",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 250.0, 291.0, 62.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-408",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "FullPacket" ],
									"patching_rect" : [ 50.0, 130.0, 79.0, 22.0 ],
									"text" : "o.pack /delay"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontsize" : 12.0,
									"id" : "obj-405",
									"maxclass" : "o.expr.codebox",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 190.0, 291.0, 32.0 ],
									"text" : "/time/delayed = /time/actual + /delay"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-404",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 160.0, 123.0, 22.0 ],
									"text" : "o.timetag /time/actual"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-401",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "FullPacket", "FullPacket", "FullPacket", "FullPacket" ],
									"patching_rect" : [ 50.0, 325.0, 141.0, 22.0 ],
									"text" : "o.schedule /time/delayed"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 80.0, 197.0, 41.0, 22.0 ],
									"text" : "pause"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-91",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-92",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 439.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-408", 0 ],
									"source" : [ "obj-401", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-405", 0 ],
									"source" : [ "obj-404", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-411", 0 ],
									"source" : [ "obj-405", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-404", 0 ],
									"source" : [ "obj-408", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-411", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-58", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-401", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 210.0, 300.0, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p delayed_bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "FullPacket" ],
					"patching_rect" : [ 105.0, 270.0, 155.0, 22.0 ],
					"text" : "o.route /Off /Continue /Start"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 105.0, 240.0, 99.0, 22.0 ],
					"text" : "o.route /longtone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "FullPacket" ],
					"patching_rect" : [ 105.0, 150.0, 108.0, 22.0 ],
					"text" : "o.route /numerics1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 105.0, 60.0, 29.5, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontsize" : 12.0,
					"id" : "obj-376",
					"linecount" : 2,
					"maxclass" : "o.compose",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 90.0, 150.0, 38.0 ],
					"saved_bundle_data" : [ 35, 98, 117, 110, 100, 108, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 47, 110, 117, 109, 101, 114, 105, 99, 115, 50, 47, 108, 111, 110, 103, 116, 111, 110, 101, 47, 79, 102, 102, 0, 44, 105, 0, 0, 0, 0, 0, 0 ],
					"saved_bundle_length" : 52,
					"text" : "/numerics2/longtone/Off : 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 15.0, 525.0, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "FullPacket" ],
					"patching_rect" : [ 90.0, 988.0, 61.0, 22.0 ],
					"text" : "o.explode"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 165.0, 988.0, 53.0, 22.0 ],
					"text" : "o.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 210.0, 30.0, 315.0, 20.0 ],
					"text" : "This is where the osc commands are sent from"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 30.0, 97.0, 22.0 ],
					"text" : "udpreceive 5001"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 540.0, 525.0, 55.0, 22.0 ],
					"text" : "60 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.0, 495.0, 120.0, 22.0 ],
					"text" : "bach.llll 38827"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 105.0, 330.0, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 645.0, 360.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 539.571428571428555, 495.0, 95.0, 22.0 ],
					"text" : "bach.ezmidiplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 210.0, 330.0, 31.0, 22.0 ],
					"text" : "play"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.0, 420.0, 47.0, 22.0 ],
					"text" : "loop all"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 645.0, 390.0, 76.0, 22.0 ],
					"text" : "showloop $1"
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 80100,
					"defaultnoteslots" : [ "null" ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-1",
					"loop" : [ 0.0, 3775.857142857142662 ],
					"maxclass" : "bach.roll",
					"numinlets" : 6,
					"numoutlets" : 8,
					"numvoices" : 1,
					"out" : "nnnnnnn",
					"outlettype" : [ "", "", "", "", "", "", "", "bang" ],
					"patching_rect" : [ 105.0, 360.0, 526.0, 120.0 ],
					"pitcheditrange" : [ "null" ],
					"showloop" : 1,
					"showplayhead" : 1,
					"stafflines" : [ 5 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"versionnumber" : 80100,
					"voicenames" : [ "[", "]" ],
					"voicespacing" : [ 0.0, 17.0 ],
					"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 2, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 3, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 4, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 5, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "]", "[", "midichannels", 1, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3067833760, 1074191213, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "_x_x_x_x_bach_float64_x_x_x_x_", 2454267025, 1085111076, 100, 0, "]", 0, "]", 0, "]" ],
					"whole_roll_data_count" : [ 1 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"order" : 0,
					"source" : [ "obj-1", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"source" : [ "obj-103", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-106", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-105", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-109", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-109", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-109", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-115", 0 ],
					"source" : [ "obj-109", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-109", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-109", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 970.5, 734.0, 948.5, 734.0 ],
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 3 ],
					"midpoints" : [ 1070.0, 1443.0, 1058.5, 1443.0 ],
					"source" : [ "obj-126", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 2 ],
					"midpoints" : [ 1070.0, 1412.0, 1044.0, 1412.0 ],
					"source" : [ "obj-127", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 1 ],
					"midpoints" : [ 1070.0, 1379.0, 1029.5, 1379.0 ],
					"source" : [ "obj-128", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 4 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-134", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-153", 0 ],
					"source" : [ "obj-132", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 959.0, 1227.0, 939.0, 1227.0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-138", 0 ],
					"source" : [ "obj-137", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"midpoints" : [ 1298.0, 1295.0, 1070.0, 1295.0 ],
					"order" : 0,
					"source" : [ "obj-138", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"midpoints" : [ 1298.0, 1295.0, 1070.0, 1295.0 ],
					"order" : 1,
					"source" : [ "obj-138", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 1298.0, 1295.0, 1070.0, 1295.0 ],
					"order" : 2,
					"source" : [ "obj-138", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"midpoints" : [ 1298.0, 1295.0, 1070.0, 1295.0 ],
					"order" : 3,
					"source" : [ "obj-138", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 1238.0, 1182.0, 939.0, 1182.0 ],
					"source" : [ "obj-138", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 1 ],
					"midpoints" : [ 960.5, 1410.0, 953.0, 1410.0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-139", 0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"hidden" : 1,
					"source" : [ "obj-141", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-137", 0 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-142", 0 ],
					"source" : [ "obj-143", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 1294.0, 1123.0, 939.0, 1123.0 ],
					"source" : [ "obj-143", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-143", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 1237.0, 1236.0, 939.0, 1236.0 ],
					"source" : [ "obj-146", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-126", 0 ],
					"midpoints" : [ 1019.0, 1315.0, 1070.0, 1315.0 ],
					"order" : 0,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-127", 0 ],
					"midpoints" : [ 1019.0, 1315.0, 1070.0, 1315.0 ],
					"order" : 1,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"midpoints" : [ 1019.0, 1315.0, 1070.0, 1315.0 ],
					"order" : 2,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-148", 0 ],
					"midpoints" : [ 1019.0, 1315.0, 1070.0, 1315.0 ],
					"order" : 3,
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-132", 0 ],
					"midpoints" : [ 1070.0, 1346.0, 1015.0, 1346.0 ],
					"source" : [ "obj-148", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-140", 0 ],
					"midpoints" : [ 966.571428571428555, 1272.0, 960.5, 1272.0 ],
					"source" : [ "obj-149", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-141", 0 ],
					"source" : [ "obj-149", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-147", 0 ],
					"source" : [ "obj-149", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"midpoints" : [ 970.5, 1123.0, 939.0, 1123.0 ],
					"source" : [ "obj-151", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-149", 0 ],
					"source" : [ "obj-151", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 2 ],
					"source" : [ "obj-152", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-150", 0 ],
					"source" : [ "obj-156", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 6 ],
					"source" : [ "obj-156", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 5 ],
					"source" : [ "obj-156", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 4 ],
					"source" : [ "obj-156", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 3 ],
					"source" : [ "obj-156", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 1 ],
					"source" : [ "obj-156", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-17", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 0,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 970.5, 765.0, 948.5, 765.0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 971.5, 691.0, 948.5, 691.0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"midpoints" : [ 971.5, 653.0, 948.5, 653.0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-376", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-46", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"order" : 0,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"order" : 1,
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-60", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-376", 1 ],
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-376", 0 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"order" : 1,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 0,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"order" : 1,
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 1,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-73", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 2,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"order" : 0,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"order" : 1,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-97", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-149" : [ "vst~[1]", "vst~[1]", 0 ],
			"obj-17" : [ "vst~", "vst~", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "bach.ezmidiplay.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.gcd.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.approx.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filter.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cage.looper.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cage.wedge.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cage.spacer.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.+.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cage.inferheadersyms.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.sliceheader.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filternull.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cage.checkbachversion.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cage.mix.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.prepend.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.split.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.change.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.-.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.sieve.maxpat",
				"bootpath" : "D:/Documents/Max 8/Packages/bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "Grace.maxsnap",
				"bootpath" : "D:/Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "qs.vstizer.mxb",
				"bootpath" : "~/Desktop/PDM/Main_patch",
				"patcherrelativepath" : "../Main_patch",
				"type" : "maxb",
				"implicit" : 1
			}
, 			{
				"name" : "bach.roll.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.playkeys.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.expr.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.length.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.iter.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.flat.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.pick.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.args.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.reg.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.print.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.keys.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.portal.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.gt.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.is.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.neq.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.eq.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.nth.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.slice.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.collect.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.explode.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.compose.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.route.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.schedule.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.timetag.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.expr.codebox.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.pack.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.display.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.join.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.sort.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.wrap.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.depth.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.mapelem.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.rev.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.subs.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.score.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.trans.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.collect.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.pack.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.step.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.lt.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.leq.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.geq.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "orjan style",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
