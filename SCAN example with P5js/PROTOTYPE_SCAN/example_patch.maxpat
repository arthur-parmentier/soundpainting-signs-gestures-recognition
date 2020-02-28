{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 38.0, 56.0, 1591.0, 852.0 ],
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
					"id" : "obj-18",
					"linecount" : 22,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1344.0, 506.0, 376.0, 301.0 ],
					"text" : "P5js sketch (as any HTML/JavaScript document loaded inside jweb) can communicate with Max. Max can call functions from P5js sketches. P5js sketch can read/write content of Max dictionaries and send messages to Max.\n\nHowever, there is a namespace conflict between Max API binded to the \"window\" object (accessible from within jweb) and P5js API binded by default to the same object (in so called \"global mode\").\n\nThere are several methods to circumvent this problem, and one of the simpler ones (requiring editing only the \"sketch.js\" file) is using P5js in so called \"instance mode\". Look at the code in the \"sketch.js\" file attached to this example to see how to prevent the namespaces conflict and how to effectively interact with P5js sketches inside jweb object.\n\nFor more informations about differences between \"global\" and \"instance\" modes of the P5js look at the \"p5.js overview\" document (available at https://github.com/processing/p5.js/wiki/p5.js-overview). For more information about communication between Max patcher and content loaded jweb object check the \"Communicating with Max from within jweb\" document (part of Max documentation)."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1344.0, 464.0, 376.0, 33.0 ],
					"text" : "simple messaging between patches created in MaxMSP and sketches written with P5*js",
					"textcolor" : [ 0.421420156955719, 0.421420156955719, 0.421420156955719, 1.0 ],
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 24.0,
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1380.0, 429.5, 292.0, 33.0 ],
					"text" : "MaxMSP/Jitter and P5*js"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-62",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.25, 379.5, 153.0, 51.0 ],
					"text" : "threshold (inversely affects the sensitivity of active zones)"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 3,
					"id" : "obj-61",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.25, 189.5, 153.0, 51.0 ],
					"text" : "amount of video feedback (applied to background detection)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 477.5, 329.0, 78.0, 22.0 ],
					"text" : "r #0setup_ok"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 477.5, 136.5, 78.0, 22.0 ],
					"text" : "r #0setup_ok"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 477.5, 358.0, 83.0, 22.0 ],
					"text" : "loadmess 233"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 477.5, 165.0, 83.0, 22.0 ],
					"text" : "loadmess 600"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 477.5, 275.5, 66.0, 22.0 ],
					"text" : "s #0tojweb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 477.5, 467.5, 66.0, 22.0 ],
					"text" : "s #0tojweb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 477.5, 432.5, 75.0, 22.0 ],
					"text" : "threshold $1"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-58",
					"maxclass" : "slider",
					"min" : 0.03,
					"mult" : 0.0002,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 477.5, 393.0, 165.0, 24.0 ],
					"size" : 1000.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 477.5, 240.5, 74.0, 22.0 ],
					"text" : "feedback $1"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-51",
					"maxclass" : "slider",
					"min" : 0.3,
					"mult" : 0.00064,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 477.5, 201.0, 165.0, 24.0 ],
					"size" : 1000.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 885.5, 123.0, 36.0, 22.0 ],
					"text" : "% 12"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1201.75, 259.5, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1201.75, 292.5, 29.5, 22.0 ],
					"text" : "-10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 81.0, 665.0, 559.0 ],
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
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.0, 161.0, 70.0, 23.0 ],
									"text" : "loadmess 1."
								}

							}
, 							{
								"box" : 								{
									"bubble" : 1,
									"id" : "obj-42",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 298.5, 302.5, 119.0, 78.0 ],
									"text" : "This is just a gen-based chorus effect from from Max examples."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 514.0, 161.0, 77.0, 23.0 ],
									"text" : "loadmess 0.1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-4",
									"maxclass" : "flonum",
									"maximum" : 1000.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 372.0, 233.0, 50.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 372.0, 263.0, 65.0, 23.0 ],
									"text" : "center $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-24",
									"maxclass" : "flonum",
									"minimum" : 0.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 449.0, 233.0, 50.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"id" : "obj-25",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 449.0, 263.0, 43.0, 23.0 ],
									"text" : "bw $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-27",
									"maxclass" : "flonum",
									"maximum" : 300.0,
									"minimum" : 0.1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 514.0, 233.0, 50.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 514.0, 263.0, 50.0, 23.0 ],
									"text" : "rate $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-29",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 582.0, 233.0, 50.0, 23.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 582.0, 263.0, 37.0, 23.0 ],
									"text" : "fb $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Lato",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "dsp.gen",
										"rect" : [ 34.0, 34.0, 531.0, 488.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Lato",
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 167.0, 321.0, 29.0, 23.0 ],
													"text" : "* -1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 286.0, 119.0, 42.0, 23.0 ],
													"text" : "* 1.31"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 350.0, 151.0, 80.0, 23.0 ],
													"text" : "param bw 20"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 180.5, 50.0, 78.0, 23.0 ],
													"text" : "param fb 0.5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 167.0, 291.0, 32.5, 23.0 ],
													"text" : "*"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 359.0, 193.0, 105.0, 23.0 ],
													"text" : "param center 127"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 238.0, 80.0, 79.0, 23.0 ],
													"text" : "param rate 8"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 286.0, 193.0, 32.5, 23.0 ],
													"text" : "*"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 286.0, 241.0, 32.5, 23.0 ],
													"text" : "+"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 286.0, 151.0, 38.0, 23.0 ],
													"text" : "cycle"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 238.0, 193.0, 32.5, 23.0 ],
													"text" : "*"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 238.0, 241.0, 32.5, 23.0 ],
													"text" : "+"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 238.0, 151.0, 38.0, 23.0 ],
													"text" : "cycle"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 208.0, 398.0, 37.0, 23.0 ],
													"text" : "out 2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 208.0, 291.0, 86.0, 23.0 ],
													"text" : "delay 44100 2"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 274.0, 398.0, 37.0, 23.0 ],
													"text" : "out 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Lato",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 58.0, 203.0, 30.0, 23.0 ],
													"text" : "in 1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 67.5, 366.0, 283.5, 366.0 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"midpoints" : [ 67.5, 250.5, 217.5, 250.5 ],
													"order" : 2,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 67.5, 378.0, 217.5, 378.0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"order" : 0,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"midpoints" : [ 368.5, 228.0, 261.0, 228.0 ],
													"order" : 1,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 1 ],
													"midpoints" : [ 368.5, 228.0, 309.0, 228.0 ],
													"order" : 0,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"midpoints" : [ 359.5, 183.0, 261.0, 183.0 ],
													"order" : 1,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"midpoints" : [ 359.5, 183.0, 309.0, 183.0 ],
													"order" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"order" : 1,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"order" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 2 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "AudioStatus_Menu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
														"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
														"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}

												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ],
										"bgcolor" : [ 0.9, 0.9, 0.9, 0.9 ],
										"editing_bgcolor" : [ 0.9, 0.9, 0.9, 1.0 ]
									}
,
									"patching_rect" : [ 131.0, 330.0, 136.0, 23.0 ],
									"text" : "gen~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 248.0, 376.0, 39.0, 22.0 ],
									"text" : "tanh~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 131.0, 376.0, 39.0, 22.0 ],
									"text" : "tanh~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 213.0, 105.244216999999992, 67.0, 22.0 ],
									"text" : "delay 2000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 213.0, 143.0, 55.0, 22.0 ],
									"text" : "0.1 4000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 213.0, 183.0, 41.0, 22.0 ],
									"text" : "line 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 213.0, 65.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 131.0, 241.0, 29.5, 22.0 ],
									"text" : "*~"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 248.0, 438.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 438.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 131.0, 65.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 381.5, 296.0, 140.5, 296.0 ],
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
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 458.5, 296.0, 140.5, 296.0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 523.5, 296.0, 140.5, 296.0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"midpoints" : [ 591.5, 296.0, 140.5, 296.0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-31", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"order" : 2,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
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
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "AudioStatus_Menu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color" : [ 0.294118, 0.313726, 0.337255, 1 ],
										"color1" : [ 0.454902, 0.462745, 0.482353, 0.0 ],
										"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 1131.0, 188.5, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p simple_processor~"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"bubbleside" : 2,
					"id" : "obj-39",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 942.5, 139.5, 119.0, 79.0 ],
					"text" : "Try this really nice BEAP module to change key and scale."
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-37",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1179.75, 406.0, 102.0, 37.0 ],
					"text" : "click to switch audio on"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 1115.0, 123.0, 92.5, 22.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 692.0, 189.0, 82.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-46",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 78.0, 401.0, 216.0 ],
						"bglocked" : 0,
						"openinpresentation" : 1,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 1,
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
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1351.785155999999915, 70.202849999999998, 67.0, 22.0 ],
									"text" : "pastebang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1768.722655999999915, 70.202849999999998, 67.0, 22.0 ],
									"text" : "pastebang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 6.452862, 72.284912000000006, 248.0, 33.0 ],
									"text" : "## Map any MIDI note number to any other MIDI note number ##"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patching_rect" : [ 145.452866, 396.315308000000016, 100.0, 22.0 ],
									"text" : "midiformat"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 1778.222533999999996, 1412.623534999999947, 126.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1933.222533999999996, 952.0, 168.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1933.222533999999996, 853.739074999999957, 135.0, 22.0 ],
									"text" : "value #0_current_list"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1933.222533999999996, 907.203856999999971, 190.0, 22.0 ],
									"text" : "vexpr ($i1+$i2)%12"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 2036.222533999999996, 1451.0, 32.5, 22.0 ],
									"text" : "b"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 1959.500121999999919, 1574.376465000000053, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-131",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1963.222533999999996, 1174.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1959.500121999999919, 1529.649292000000059, 95.722412000000006, 22.0 ],
									"text" : "pack i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 2036.222533999999996, 1488.0, 122.5, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1933.222533999999996, 1008.235106999999971, 53.0, 53.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-118",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 2036.222533999999996, 1415.0, 65.0, 22.0 ],
									"text" : "zl sect"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 2036.222533999999996, 1362.36901899999998, 38.0, 22.0 ],
									"text" : "% 12"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1963.222533999999996, 1131.0, 32.5, 22.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 1933.222533999999996, 1092.0, 49.0, 22.0 ],
									"text" : "uzi 128"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-108",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 339.97543300000001, 193.790802000000014, 45.0, 22.0 ],
									"text" : "sort -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 634.952881000000048, 62.257362000000001, 36.999985000000002, 36.999985000000002 ]
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 1062.882935000000089, 247.428832999999997, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 392.97543300000001, 361.0, 66.0, 22.0 ],
									"text" : "r #0_list"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 816.452881000000048, 320.0, 66.0, 22.0 ],
									"text" : "r #0_list"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1116.882935000000089, 131.920165999999995, 66.0, 22.0 ],
									"text" : "r #0_list"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 634.952881000000048, 260.181885000000023, 67.0, 22.0 ],
									"text" : "s #0_list"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1231.855103000000099, 152.378372000000013, 106.0, 22.0 ],
									"text" : "s #0_ui_update"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 816.452881000000048, 644.962279999999964, 106.0, 22.0 ],
									"text" : "s #0_ui_update"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1778.222533999999996, 1451.0, 106.0, 22.0 ],
									"text" : "s #0_ui_update"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 951.098328000000038, 146.920165999999995, 106.0, 22.0 ],
									"text" : "s #0_ui_update"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 367.47543300000001, 274.348754999999983, 106.0, 22.0 ],
									"text" : "s #0_ui_update"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 392.97543300000001, 671.955322000000024, 106.0, 22.0 ],
									"text" : "s #0_ui_update"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1518.618529999999964, 485.299194, 106.0, 22.0 ],
									"text" : "s #0_ui_update"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "dump", "zlclear" ],
									"patching_rect" : [ 634.952881000000048, 107.757339000000002, 141.0, 22.0 ],
									"text" : "t dump zlclear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.952881000000048, 30.726959000000001, 104.0, 22.0 ],
									"text" : "r #0_ui_update"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 1461.285155999999915, 443.466431, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1461.285155999999915, 410.669402999999988, 82.0, 22.0 ],
									"text" : "prepend read"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Bold Regular",
									"fontsize" : 9.0,
									"id" : "obj-102",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1462.785155999999915, 330.614043999999978, 38.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 119.0, 122.604866000000001, 38.0, 17.0 ],
									"text" : "Preset",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "write" ],
									"patching_rect" : [ 1452.285155999999915, 112.811554000000001, 53.0, 22.0 ],
									"text" : "t b write"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1351.785155999999915, 181.669402999999988, 20.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "types" ],
									"patching_rect" : [ 1351.785155999999915, 220.669402999999988, 56.0, 22.0 ],
									"text" : "t b types"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 1351.785155999999915, 274.061919999999986, 262.0, 23.0 ],
									"text" : "folder C74:/packages/Beap/misc/notemaps/"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "color",
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-86",
									"items" : [ "0_init", ",", "64 diatonic notes", ",", "down one octave", ",", "larger drum map", ",", "sequential to diatonic", ",", "tiny drum map", ",", "up one octave" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1420.785155999999915, 354.614043999999978, 100.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 119.0, 142.292236000000003, 86.0, 19.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 0.63 ]
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 1486.285155999999915, 179.669402999999988, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
									"activebgoncolor" : [ 0.0, 0.870588, 0.101961, 1.0 ],
									"activetextcolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"activetextoncolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"bgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
									"bgoncolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"id" : "obj-80",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1452.285155999999915, 72.202849999999998, 61.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 119.0, 162.359955000000014, 40.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_shortname" : "save",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_type" : 2,
											"parameter_longname" : "save",
											"parameter_mmax" : 1
										}

									}
,
									"text" : "save",
									"textcolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"varname" : "save"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 392.97543300000001, 565.315307999999959, 115.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.815686, 0.847059, 0.886275, 0.0 ],
									"activebgoncolor" : [ 0.0, 0.870588, 0.101961, 1.0 ],
									"activetextcolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"activetextoncolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"bgcolor" : [ 0.815686, 0.847059, 0.886275, 0.0 ],
									"bgoncolor" : [ 0.815686, 0.847059, 0.886275, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"id" : "obj-58",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 1051.382935000000089, 58.315300000000001, 61.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 226.0, 162.359955000000014, 70.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_shortname" : "reverse",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_type" : 2,
											"parameter_longname" : "reverse",
											"parameter_mmax" : 1
										}

									}
,
									"text" : "reverse",
									"varname" : "live.text[1]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Bold Regular",
									"fontsize" : 9.0,
									"id" : "obj-57",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 951.098328000000038, 30.420165999999998, 58.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 226.0, 122.604866000000001, 58.0, 17.0 ],
									"text" : "Transform",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Bold Regular",
									"fontsize" : 9.0,
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 2057.722655999999915, 386.199889999999982, 58.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 316.0, 122.604866000000001, 58.0, 17.0 ],
									"text" : "Load Scale",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 816.452881000000048, 609.848754999999983, 156.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
									"activebgoncolor" : [ 0.0, 0.870588, 0.101961, 1.0 ],
									"activetextcolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"activetextoncolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"bgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
									"bgoncolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"focusbordercolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"id" : "obj-56",
									"maxclass" : "live.text",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 323.97543300000001, 72.284912000000006, 61.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 166.0, 162.359955000000014, 39.0, 20.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_shortname" : "initalize",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_type" : 2,
											"parameter_longname" : "initalize",
											"parameter_mmax" : 1
										}

									}
,
									"text" : "init",
									"textcolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"varname" : "initalize"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 951.098328000000038, 112.315308000000002, 130.784606999999994, 22.0 ],
									"text" : "t b s"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 1062.882935000000089, 203.115280000000013, 58.0, 22.0 ],
									"text" : "listfunnel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 50.0, 94.0, 640.0, 480.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 321.333344000000011, 259.0, 39.0, 20.0 ],
													"text" : "zl rev"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 321.333344000000011, 216.108092999999997, 40.0, 20.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-79",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 6,
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "" ],
													"patching_rect" : [ 50.0, 100.0, 358.166687000000024, 20.0 ],
													"text" : "sel right left up down reverse"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 253.5, 216.108092999999997, 40.0, 20.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 185.666672000000005, 216.108092999999997, 40.0, 20.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 185.666672000000005, 253.0, 74.0, 20.0 ],
													"text" : "vexpr $f1+1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 253.5, 296.891907000000003, 71.0, 20.0 ],
													"text" : "vexpr $f1-1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 117.833336000000003, 144.0, 38.0, 20.0 ],
													"text" : "t b -1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 50.0, 144.0, 34.0, 20.0 ],
													"text" : "t b 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 289.0, 105.833336000000003, 20.0 ],
													"text" : "zl rot 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 216.108092999999997, 46.0, 20.0 ],
													"text" : "zl reg"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-129",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-130",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 374.5, 40.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-131",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 185.666672000000005, 401.0, 25.0, 25.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 0 ],
													"source" : [ "obj-129", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"midpoints" : [ 384.0, 140.054046999999997, 351.833344000000011, 140.054046999999997 ],
													"order" : 0,
													"source" : [ "obj-130", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 1 ],
													"midpoints" : [ 384.0, 184.054046999999997, 86.5, 184.054046999999997 ],
													"order" : 3,
													"source" : [ "obj-130", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 1 ],
													"midpoints" : [ 384.0, 184.054046999999997, 216.166672000000005, 184.054046999999997 ],
													"order" : 2,
													"source" : [ "obj-130", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 1 ],
													"midpoints" : [ 384.0, 184.054046999999997, 284.0, 184.054046999999997 ],
													"order" : 1,
													"source" : [ "obj-130", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 1 ],
													"midpoints" : [ 74.5, 199.0, 146.333336000000003, 199.0 ],
													"source" : [ "obj-56", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"midpoints" : [ 127.333336000000003, 175.554046999999997, 59.5, 175.554046999999997 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 1 ],
													"source" : [ "obj-58", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-79", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-79", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-79", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-79", 3 ]
												}

											}
 ],
										"bgfillcolor_type" : "gradient",
										"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
										"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
									}
,
									"patching_rect" : [ 1062.882935000000089, 168.623946999999987, 73.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p list_shifter"
								}

							}
, 							{
								"box" : 								{
									"arrowcolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 0.63 ],
									"id" : "obj-48",
									"maxclass" : "live.arrows",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 951.098328000000038, 58.315300000000001, 70.0, 15.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 226.0, 142.292236000000003, 70.0, 15.0 ]
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 489.47543300000001, 637.259949000000006, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 489.47543300000001, 603.259949000000006, 58.0, 22.0 ],
									"text" : "listfunnel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 392.97543300000001, 397.315308000000016, 89.0, 22.0 ],
									"text" : "prepend setlist"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-6",
									"maxclass" : "multislider",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 392.97543300000001, 437.315308000000016, 198.045165999999995, 96.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 119.0, 46.604866000000001, 263.0, 75.0 ],
									"setminmax" : [ 0.0, 127.0 ],
									"setstyle" : 1,
									"settype" : 0,
									"size" : 128,
									"slidercolor" : [ 0.0, 0.870588, 0.101961, 0.58 ],
									"thickness" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1903.222533999999996, 514.347533999999996, 49.0, 22.0 ],
									"text" : "zl nth 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1881.889282000000094, 431.169128000000001, 75.0, 22.0 ],
									"text" : "prepend get"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 1881.889282000000094, 470.347533999999996, 83.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "dict bp.scales"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "color",
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-83",
									"items" : [ "C", ",", "C#/Db", ",", "D", ",", "D#/Eb", ",", "E", ",", "F", ",", "F#/Gb", ",", "G", ",", "G#/Ab", ",", "A", ",", "A#/Bb", ",", "B" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 2057.722655999999915, 418.199889999999982, 100.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 316.0, 142.292236000000003, 66.0, 19.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 0.63 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 1768.722655999999915, 120.378356999999994, 69.0, 22.0 ],
									"text" : "t getkeys b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "clear" ],
									"patching_rect" : [ 1811.389282000000094, 236.378372000000013, 49.0, 22.0 ],
									"text" : "t l clear"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor_angle" : 270.0,
									"bgfillcolor_color" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgfillcolor_color1" : [ 0.435294, 0.462745, 0.498039, 1.0 ],
									"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
									"bgfillcolor_proportion" : 0.39,
									"bgfillcolor_type" : "color",
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-79",
									"items" : [ "ionian", ",", "dorian", ",", "phrygian", ",", "lydian", ",", "mixolydian", ",", "aeolian", ",", "chromatic", ",", "harmonic-minor", ",", "melodic-minor", ",", "major-pentatonic", ",", "minor-pentatonic", ",", "lydian-augmented", ",", "major-bebop", ",", "half-diminished", ",", "lydian-dominant", ",", "mixolydian-b6", ",", "altered", ",", "dorian-b2", ",", "blues", ",", "5th-mode-of-harmonic-minor", ",", "5th-mode-of-harmonic-major", ",", "dominant-bebop", ",", "dominant-diminished", ",", "whole-tone", ",", "major-triad", ",", "minor-triad", ",", "augmented-triad", ",", "diminished-triad", ",", "major-major-seventh", ",", "dominant-seventh", ",", "minor-seventh", ",", "half-diminished-seventh", ",", "fully-diminished-seventh", ",", "neopolitan-sixth", ",", "french-augmented-sixth", ",", "+", ",", "11", ",", "13", ",", "2", ",", "5", ",", "6", ",", "6/9", ",", "6add9", ",", "6sus4", ",", "7maj5", ",", "7sus", ",", "7sus4", ",", "9", ",", "9sus4", ",", "add2", ",", "add9", ",", "aug", ",", "dim", ",", "dim7", ",", "dom13", ",", "dom7", ",", "dom7(9)", ",", "dom7#11", ",", "dom7#5", ",", "dom7#5#9", ",", "dom7#9", ",", "dom7b5", ",", "dom7b5#9", ",", "dom7b5b9", ",", "dom7b9b13", ",", "dom9", ",", "m6", ",", "m9", ",", "maj", ",", "maj6", ",", "maj7", ",", "maj7(9)", ",", "maj7(9 13)", ",", "maj9", ",", "M9", ",", "M11", ",", "M13", ",", "min", ",", "min9", ",", "min11", ",", "min13", ",", "min6", ",", "min7", ",", "min7b5", ",", "m7b5", ",", "sus", ",", "sus2", ",", "sus4" ],
									"maxclass" : "umenu",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1841.389282000000094, 386.199889999999982, 100.0, 19.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 316.0, 162.359955000000014, 66.0, 19.0 ],
									"textcolor" : [ 1.0, 1.0, 1.0, 0.63 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1811.389282000000094, 325.378326000000015, 98.0, 22.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1811.389282000000094, 281.642882999999983, 27.0, 22.0 ],
									"text" : "iter"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "dictionary", "", "", "" ],
									"patching_rect" : [ 1768.722655999999915, 197.378372000000013, 83.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"parameter_enable" : 0,
										"parameter_mappable" : 0
									}
,
									"text" : "dict bp.scales"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-73",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1818.722655999999915, 152.378372000000013, 114.0, 22.0 ],
									"text" : "read bp.scales.json"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 2057.722655999999915, 489.642882999999983, 65.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1963.222533999999996, 784.259766000000013, 160.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "bang", "" ],
									"patching_rect" : [ 1933.222533999999996, 552.542908000000011, 79.0, 22.0 ],
									"text" : "t l b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1963.222533999999996, 731.669128000000001, 44.0, 22.0 ],
									"text" : "thresh"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 1963.222533999999996, 686.569153000000028, 160.0, 22.0 ],
									"text" : "i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 1963.222533999999996, 630.199889999999982, 49.0, 22.0 ],
									"text" : "uzi"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1993.222533999999996, 594.199889999999982, 39.0, 22.0 ],
									"text" : "zl len"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 323.97543300000001, 40.420166000000002, 47.0, 20.0 ],
									"text" : "init coll"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 953.952881000000048, 644.962279999999964, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 634.952881000000048, 168.623946999999987, 104.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 816.452881000000048, 361.0, 58.0, 22.0 ],
									"text" : "listfunnel"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 634.952881000000048, 224.217650999999989, 76.0, 22.0 ],
									"text" : "zl group 128"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 409.97543300000001, 232.790802000000014, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 409.97543300000001, 193.790802000000014, 41.0, 22.0 ],
									"text" : "$1 $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 409.97543300000001, 153.790786999999995, 32.5, 22.0 ],
									"text" : "- 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "int" ],
									"patching_rect" : [ 323.97543300000001, 114.420165999999995, 106.0, 22.0 ],
									"text" : "uzi 128"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 145.452866, 364.315308000000016, 61.0, 22.0 ],
									"text" : "pack i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 61.452862000000003, 396.315308000000016, 32.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"coll_data" : 									{
										"count" : 128,
										"data" : [ 											{
												"key" : 0,
												"value" : [ 0 ]
											}
, 											{
												"key" : 1,
												"value" : [ 0 ]
											}
, 											{
												"key" : 2,
												"value" : [ 2 ]
											}
, 											{
												"key" : 3,
												"value" : [ 2 ]
											}
, 											{
												"key" : 4,
												"value" : [ 4 ]
											}
, 											{
												"key" : 5,
												"value" : [ 5 ]
											}
, 											{
												"key" : 6,
												"value" : [ 5 ]
											}
, 											{
												"key" : 7,
												"value" : [ 7 ]
											}
, 											{
												"key" : 8,
												"value" : [ 7 ]
											}
, 											{
												"key" : 9,
												"value" : [ 9 ]
											}
, 											{
												"key" : 10,
												"value" : [ 9 ]
											}
, 											{
												"key" : 11,
												"value" : [ 11 ]
											}
, 											{
												"key" : 12,
												"value" : [ 12 ]
											}
, 											{
												"key" : 13,
												"value" : [ 12 ]
											}
, 											{
												"key" : 14,
												"value" : [ 14 ]
											}
, 											{
												"key" : 15,
												"value" : [ 14 ]
											}
, 											{
												"key" : 16,
												"value" : [ 16 ]
											}
, 											{
												"key" : 17,
												"value" : [ 17 ]
											}
, 											{
												"key" : 18,
												"value" : [ 17 ]
											}
, 											{
												"key" : 19,
												"value" : [ 19 ]
											}
, 											{
												"key" : 20,
												"value" : [ 19 ]
											}
, 											{
												"key" : 21,
												"value" : [ 21 ]
											}
, 											{
												"key" : 22,
												"value" : [ 21 ]
											}
, 											{
												"key" : 23,
												"value" : [ 23 ]
											}
, 											{
												"key" : 24,
												"value" : [ 24 ]
											}
, 											{
												"key" : 25,
												"value" : [ 24 ]
											}
, 											{
												"key" : 26,
												"value" : [ 26 ]
											}
, 											{
												"key" : 27,
												"value" : [ 26 ]
											}
, 											{
												"key" : 28,
												"value" : [ 28 ]
											}
, 											{
												"key" : 29,
												"value" : [ 29 ]
											}
, 											{
												"key" : 30,
												"value" : [ 29 ]
											}
, 											{
												"key" : 31,
												"value" : [ 31 ]
											}
, 											{
												"key" : 32,
												"value" : [ 31 ]
											}
, 											{
												"key" : 33,
												"value" : [ 33 ]
											}
, 											{
												"key" : 34,
												"value" : [ 33 ]
											}
, 											{
												"key" : 35,
												"value" : [ 35 ]
											}
, 											{
												"key" : 36,
												"value" : [ 36 ]
											}
, 											{
												"key" : 37,
												"value" : [ 36 ]
											}
, 											{
												"key" : 38,
												"value" : [ 38 ]
											}
, 											{
												"key" : 39,
												"value" : [ 38 ]
											}
, 											{
												"key" : 40,
												"value" : [ 40 ]
											}
, 											{
												"key" : 41,
												"value" : [ 41 ]
											}
, 											{
												"key" : 42,
												"value" : [ 41 ]
											}
, 											{
												"key" : 43,
												"value" : [ 43 ]
											}
, 											{
												"key" : 44,
												"value" : [ 43 ]
											}
, 											{
												"key" : 45,
												"value" : [ 45 ]
											}
, 											{
												"key" : 46,
												"value" : [ 45 ]
											}
, 											{
												"key" : 47,
												"value" : [ 47 ]
											}
, 											{
												"key" : 48,
												"value" : [ 48 ]
											}
, 											{
												"key" : 49,
												"value" : [ 48 ]
											}
, 											{
												"key" : 50,
												"value" : [ 50 ]
											}
, 											{
												"key" : 51,
												"value" : [ 50 ]
											}
, 											{
												"key" : 52,
												"value" : [ 52 ]
											}
, 											{
												"key" : 53,
												"value" : [ 53 ]
											}
, 											{
												"key" : 54,
												"value" : [ 53 ]
											}
, 											{
												"key" : 55,
												"value" : [ 55 ]
											}
, 											{
												"key" : 56,
												"value" : [ 55 ]
											}
, 											{
												"key" : 57,
												"value" : [ 57 ]
											}
, 											{
												"key" : 58,
												"value" : [ 57 ]
											}
, 											{
												"key" : 59,
												"value" : [ 59 ]
											}
, 											{
												"key" : 60,
												"value" : [ 60 ]
											}
, 											{
												"key" : 61,
												"value" : [ 60 ]
											}
, 											{
												"key" : 62,
												"value" : [ 62 ]
											}
, 											{
												"key" : 63,
												"value" : [ 62 ]
											}
, 											{
												"key" : 64,
												"value" : [ 64 ]
											}
, 											{
												"key" : 65,
												"value" : [ 65 ]
											}
, 											{
												"key" : 66,
												"value" : [ 65 ]
											}
, 											{
												"key" : 67,
												"value" : [ 67 ]
											}
, 											{
												"key" : 68,
												"value" : [ 67 ]
											}
, 											{
												"key" : 69,
												"value" : [ 69 ]
											}
, 											{
												"key" : 70,
												"value" : [ 69 ]
											}
, 											{
												"key" : 71,
												"value" : [ 71 ]
											}
, 											{
												"key" : 72,
												"value" : [ 72 ]
											}
, 											{
												"key" : 73,
												"value" : [ 72 ]
											}
, 											{
												"key" : 74,
												"value" : [ 74 ]
											}
, 											{
												"key" : 75,
												"value" : [ 74 ]
											}
, 											{
												"key" : 76,
												"value" : [ 76 ]
											}
, 											{
												"key" : 77,
												"value" : [ 77 ]
											}
, 											{
												"key" : 78,
												"value" : [ 77 ]
											}
, 											{
												"key" : 79,
												"value" : [ 79 ]
											}
, 											{
												"key" : 80,
												"value" : [ 79 ]
											}
, 											{
												"key" : 81,
												"value" : [ 81 ]
											}
, 											{
												"key" : 82,
												"value" : [ 81 ]
											}
, 											{
												"key" : 83,
												"value" : [ 83 ]
											}
, 											{
												"key" : 84,
												"value" : [ 84 ]
											}
, 											{
												"key" : 85,
												"value" : [ 84 ]
											}
, 											{
												"key" : 86,
												"value" : [ 86 ]
											}
, 											{
												"key" : 87,
												"value" : [ 86 ]
											}
, 											{
												"key" : 88,
												"value" : [ 88 ]
											}
, 											{
												"key" : 89,
												"value" : [ 89 ]
											}
, 											{
												"key" : 90,
												"value" : [ 89 ]
											}
, 											{
												"key" : 91,
												"value" : [ 91 ]
											}
, 											{
												"key" : 92,
												"value" : [ 91 ]
											}
, 											{
												"key" : 93,
												"value" : [ 93 ]
											}
, 											{
												"key" : 94,
												"value" : [ 93 ]
											}
, 											{
												"key" : 95,
												"value" : [ 95 ]
											}
, 											{
												"key" : 96,
												"value" : [ 96 ]
											}
, 											{
												"key" : 97,
												"value" : [ 96 ]
											}
, 											{
												"key" : 98,
												"value" : [ 98 ]
											}
, 											{
												"key" : 99,
												"value" : [ 98 ]
											}
, 											{
												"key" : 100,
												"value" : [ 100 ]
											}
, 											{
												"key" : 101,
												"value" : [ 101 ]
											}
, 											{
												"key" : 102,
												"value" : [ 101 ]
											}
, 											{
												"key" : 103,
												"value" : [ 103 ]
											}
, 											{
												"key" : 104,
												"value" : [ 103 ]
											}
, 											{
												"key" : 105,
												"value" : [ 105 ]
											}
, 											{
												"key" : 106,
												"value" : [ 105 ]
											}
, 											{
												"key" : 107,
												"value" : [ 107 ]
											}
, 											{
												"key" : 108,
												"value" : [ 108 ]
											}
, 											{
												"key" : 109,
												"value" : [ 108 ]
											}
, 											{
												"key" : 110,
												"value" : [ 110 ]
											}
, 											{
												"key" : 111,
												"value" : [ 110 ]
											}
, 											{
												"key" : 112,
												"value" : [ 112 ]
											}
, 											{
												"key" : 113,
												"value" : [ 113 ]
											}
, 											{
												"key" : 114,
												"value" : [ 113 ]
											}
, 											{
												"key" : 115,
												"value" : [ 115 ]
											}
, 											{
												"key" : 116,
												"value" : [ 115 ]
											}
, 											{
												"key" : 117,
												"value" : [ 117 ]
											}
, 											{
												"key" : 118,
												"value" : [ 117 ]
											}
, 											{
												"key" : 119,
												"value" : [ 119 ]
											}
, 											{
												"key" : 120,
												"value" : [ 120 ]
											}
, 											{
												"key" : 121,
												"value" : [ 120 ]
											}
, 											{
												"key" : 122,
												"value" : [ 122 ]
											}
, 											{
												"key" : 123,
												"value" : [ 122 ]
											}
, 											{
												"key" : 124,
												"value" : [ 124 ]
											}
, 											{
												"key" : 125,
												"value" : [ 125 ]
											}
, 											{
												"key" : 126,
												"value" : [ 125 ]
											}
, 											{
												"key" : 127,
												"value" : [ 127 ]
											}
 ]
									}
,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 145.452866, 322.315308000000016, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1
									}
,
									"text" : "coll #0_mapper"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 61.452862000000003, 353.920165999999995, 35.0, 22.0 ],
									"text" : "== 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 61.452862000000003, 444.920165999999995, 187.0, 22.0 ],
									"text" : "switch 2 1"
								}

							}
, 							{
								"box" : 								{
									"activebgcolor" : [ 0.572549, 0.615686, 0.658824, 0.0 ],
									"activebgoncolor" : [ 0.0, 0.870117, 0.103208, 1.0 ],
									"activetextcolor" : [ 1.0, 1.0, 1.0, 0.57 ],
									"activetextoncolor" : [ 0.0, 0.019608, 0.078431, 1.0 ],
									"bgcolor" : [ 0.101961, 0.101961, 0.101961, 0.78 ],
									"bordercolor" : [ 0.0, 0.019608, 0.078431, 0.37 ],
									"id" : "obj-29",
									"maxclass" : "live.text",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 61.452862000000003, 301.384491000000025, 40.0, 20.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 337.045165999999995, 18.888351, 52.0, 14.764645 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_shortname" : "mute",
											"parameter_enum" : [ "val1", "val2" ],
											"parameter_defer" : 1,
											"parameter_type" : 2,
											"parameter_longname" : "mute",
											"parameter_initial_enable" : 1,
											"parameter_mmax" : 1,
											"parameter_initial" : [ 0.0 ]
										}

									}
,
									"text" : "bypass",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"texton" : "bypass",
									"varname" : "mute"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Bold Regular",
									"fontsize" : 9.0,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 874.702881000000048, 402.315308000000016, 40.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 59.122681, 39.604866000000001, 40.0, 17.0 ],
									"text" : "Output",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Bold Regular",
									"fontsize" : 9.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 829.452881000000048, 402.315308000000016, 32.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 8.122688, 39.604866000000001, 32.0, 17.0 ],
									"text" : "Input",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"textjustification" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 145.452866, 252.180037999999996, 61.0, 22.0 ],
									"text" : "unpack i i"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 8,
									"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
									"patching_rect" : [ 145.452866, 199.180037999999996, 100.0, 22.0 ],
									"text" : "midiparse"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.452862000000003, 492.920165999999995, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 229.452866, 126.315299999999993, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"embed" : 1,
									"enablehscroll" : 0,
									"enablevscroll" : 1,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"numinlets" : 1,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 40.0, 135.0, 105.0, 135.0 ],
										"bglocked" : 0,
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-197",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 1851.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-198",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1778.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 127 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-199",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1813.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2668.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-200",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 1742.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-201",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1669.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 126 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-202",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1704.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2647.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-203",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 1640.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-204",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1567.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 125 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-205",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1602.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2626.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-206",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 1531.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-207",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1458.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 124 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-208",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1493.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2605.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-209",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 1422.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-210",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1349.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 123 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-211",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1384.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2584.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-212",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 1313.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-213",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1240.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 122 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-214",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1275.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2563.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-215",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 1211.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-216",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1138.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 121 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-217",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1173.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2542.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-218",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 1102.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-219",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1029.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 120 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-220",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 1064.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2521.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-221",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 991.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-222",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 918.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 119 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-223",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 953.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2500.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-224",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 882.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-225",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 809.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 118 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-226",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 844.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2479.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-227",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 780.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-228",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 707.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 117 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-229",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 742.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2458.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-230",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 671.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-231",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 598.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 116 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-232",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 633.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2437.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-233",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 562.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-234",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 489.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 115 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-235",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 524.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2416.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-236",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 453.763794000000019, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-237",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 380.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 114 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-238",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 415.52758799999998, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2395.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-239",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 351.763794000000019, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-240",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 278.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 113 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-241",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 313.52758799999998, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2374.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-242",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1486.098876999999902, 242.763809000000009, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-243",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 169.763809000000009, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 112 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-244",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1486.098876999999902, 204.527602999999999, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2353.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-245",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 1851.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-246",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1778.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 111 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-247",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1813.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2332.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-248",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 1742.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-249",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1669.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 110 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-250",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1704.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2311.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-251",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 1640.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-252",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1567.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 109 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-253",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1602.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2290.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-254",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 1531.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-255",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1458.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 108 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-256",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1493.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2269.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-257",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 1422.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-258",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1349.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 107 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-259",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1384.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2248.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-260",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 1313.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-261",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1240.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 106 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-262",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1275.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2227.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-263",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 1211.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-264",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1138.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 105 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-265",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1173.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2206.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-266",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 1102.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-267",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1029.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 104 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-268",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 1064.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2185.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-269",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 991.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-270",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 918.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 103 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-271",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 953.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2164.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-272",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 882.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-273",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 809.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 102 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-274",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 844.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2143.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-275",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 780.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-276",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 707.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 101 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-277",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 742.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2122.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-278",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 671.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-279",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 598.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 100 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-280",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 633.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2101.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-281",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 562.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-282",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 489.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 99 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-283",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 524.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2080.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-284",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 453.763794000000019, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-285",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 380.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 98 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-286",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 415.52758799999998, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2059.763915999999881, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-287",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 351.763794000000019, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-288",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 278.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 97 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-289",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 313.52758799999998, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2038.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-290",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1289.098876999999902, 242.763809000000009, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-291",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 169.763809000000009, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 96 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-292",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1289.098876999999902, 204.527602999999999, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 2017.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-293",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 1859.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-294",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1786.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 95 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-295",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1821.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1996.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-296",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 1750.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-297",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1677.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 94 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-298",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1712.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1975.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-299",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 1648.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-300",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1575.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 93 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-301",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1610.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1954.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-302",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 1539.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-303",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1466.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 92 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-304",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1501.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1933.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-305",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 1430.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-306",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1357.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 91 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-307",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1392.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1912.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-308",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 1321.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-309",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1248.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 90 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-310",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1283.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1891.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-311",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 1219.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-312",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1146.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 89 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-313",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1181.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1870.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-314",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 1110.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-315",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1037.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 88 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-316",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 1072.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1849.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-317",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 999.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-318",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 926.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 87 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-319",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 961.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1828.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-320",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 890.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-321",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 817.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 86 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-322",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 852.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1807.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-323",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 788.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-324",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 715.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 85 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-325",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 750.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1786.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-326",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 679.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-327",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 606.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 84 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-328",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 641.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1765.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-329",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 570.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-330",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 497.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 83 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-331",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 532.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1744.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-332",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 461.763794000000019, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-333",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 388.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 82 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-334",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 423.52758799999998, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1723.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-335",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 359.763794000000019, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-336",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 286.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 81 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-337",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 321.52758799999998, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1702.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-338",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1096.098876999999902, 250.763809000000009, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-339",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 177.763809000000009, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 80 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-340",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1096.098876999999902, 212.527602999999999, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1681.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-341",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 1859.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-342",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1786.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 79 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-343",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1821.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1660.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-344",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 1750.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-345",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1677.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 78 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-346",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1712.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1639.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-347",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 1648.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-348",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1575.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 77 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-349",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1610.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1618.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-350",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 1539.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-351",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1466.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 76 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-352",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1501.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1597.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-353",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 1430.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-354",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1357.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 75 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-355",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1392.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1576.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-356",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 1321.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-357",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1248.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 74 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-358",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1283.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1555.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-359",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 1219.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-360",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1146.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 73 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-361",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1181.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1534.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-362",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 1110.798461999999972, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-363",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1037.798461999999972, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 72 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-364",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 1072.562255999999934, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1513.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-365",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 999.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-366",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 926.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 71 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-367",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 961.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1492.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-368",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 890.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-369",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 817.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 70 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-370",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 852.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1471.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-371",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 788.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-372",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 715.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 69 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-373",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 750.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1450.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-374",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 679.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-375",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 606.763793999999962, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 68 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-376",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 641.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1429.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-377",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 570.763793999999962, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-378",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 497.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 67 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-379",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 532.527588000000037, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1408.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-380",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 461.763794000000019, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-381",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 388.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 66 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-382",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 423.52758799999998, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1387.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-383",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 359.763794000000019, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-384",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 286.763794000000019, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 65 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-385",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 321.52758799999998, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1366.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-386",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 899.098816000000056, 250.763809000000009, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-387",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 177.763809000000009, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 64 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-388",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 899.098816000000056, 212.527602999999999, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1345.763916000000108, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 1796.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-102",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1723.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 63 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-103",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1757.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1324.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 1687.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1614.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 62 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-106",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1648.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1303.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-107",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 1585.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-108",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1512.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 61 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-109",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1546.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1282.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 1476.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1403.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 60 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-112",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1437.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1261.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-113",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 1367.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1294.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 59 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-115",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1328.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1240.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-116",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 1258.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-117",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1185.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 58 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-118",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1219.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1219.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-119",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 1156.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-120",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1083.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 57 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-121",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1117.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1198.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-122",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 1047.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-123",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 974.034607000000051, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 56 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-124",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 1008.798401000000013, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1177.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-125",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 936.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-126",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 863.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 55 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-127",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 897.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1156.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-128",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 827.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-129",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 754.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 54 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-130",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 788.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1135.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-131",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 725.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-132",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 652.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 53 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-133",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 686.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1114.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-134",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 616.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-135",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 543.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 52 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-136",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 577.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1093.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-137",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 507.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-138",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 434.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 51 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-139",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 468.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1072.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-140",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 398.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-141",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 325.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 50 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-142",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 359.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1051.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-143",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 296.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-144",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 223.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 49 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-145",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 257.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1030.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-146",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 630.0, 187.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-147",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 114.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 48 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-148",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 630.0, 148.76379399999999, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1009.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-149",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 1796.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-150",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1723.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 47 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-151",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1757.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 988.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-152",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 1687.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-153",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1614.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 46 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-154",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1648.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 967.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-155",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 1585.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-156",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1512.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 45 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-157",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1546.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 946.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-158",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 1476.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-159",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1403.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 44 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-160",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1437.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 925.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-161",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 1367.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-162",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1294.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 43 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-163",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1328.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 904.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-164",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 1258.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-165",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1185.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 42 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-166",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1219.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 883.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-167",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 1156.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-168",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1083.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 41 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-169",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1117.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 862.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-170",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 1047.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-171",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 974.034607000000051, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 40 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-172",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 1008.798401000000013, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 841.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-173",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 936.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-174",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 863.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 39 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-175",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 897.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 820.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-176",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 827.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-177",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 754.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 38 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-178",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 788.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 799.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-179",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 725.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-180",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 652.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 37 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-181",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 686.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 778.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-182",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 616.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-183",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 543.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 36 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-184",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 577.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 757.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-185",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 507.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-186",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 434.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 35 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-187",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 468.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 736.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-188",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 398.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-189",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 325.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 34 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-190",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 359.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 715.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-191",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 296.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-192",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 223.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 33 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-193",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 257.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 694.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-194",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 433.0, 187.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-195",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 114.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 32 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-196",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 433.0, 148.76379399999999, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 673.763855000000035, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 1804.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1731.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 31 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-5",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1765.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 652.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 1695.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1622.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 30 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-8",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1656.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 631.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 1593.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1520.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 29 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-11",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1554.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 610.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 1484.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1411.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 28 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-19",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1445.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 589.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 1375.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1302.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 27 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-22",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1336.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 568.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 1266.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1193.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 26 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-25",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1227.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 547.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 1164.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1091.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 25 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-28",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1125.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 526.763793999999962, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 1055.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 982.034607000000051, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 24 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-31",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 1016.798401000000013, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 505.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 944.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-33",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 871.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 23 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-34",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 905.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 484.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 835.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 762.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 22 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-37",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 796.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 463.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 733.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 660.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 21 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-40",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 694.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 442.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 624.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 551.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 20 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-43",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 585.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 421.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 515.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 442.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 19 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-46",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 476.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 400.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 406.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 333.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 18 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-49",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 367.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 379.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 304.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-96",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 231.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 17 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-97",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 265.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 358.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-98",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 240.0, 195.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-99",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 122.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 16 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-100",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 240.0, 156.76379399999999, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 337.763824, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-72",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 1804.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1731.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 15 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-74",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1765.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 316.763794000000019, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-75",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 1695.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1622.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 14 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-77",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1656.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 295.763794000000019, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 1593.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-79",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1520.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 13 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-80",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1554.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 274.763794000000019, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-81",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 1484.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-82",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1411.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 12 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-83",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1445.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 253.763809000000009, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 1375.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-85",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1302.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 11 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-86",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1336.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 232.763809000000009, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-87",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 1266.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1193.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 10 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-89",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1227.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 211.763809000000009, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 1164.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-91",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1091.034668000000011, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 9 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-92",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1125.798461999999972, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 190.763809000000009, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 1055.034668000000011, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-94",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 982.034607000000051, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 8 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-95",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 1016.798401000000013, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 169.763809000000009, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 944.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 871.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 7 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-62",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 905.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 148.76379399999999, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-63",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 835.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-64",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 762.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 6 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-65",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 796.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 127.763801999999998, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 733.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-67",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 660.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 5 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-68",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 694.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 106.763801999999998, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 624.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 551.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 4 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-71",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 585.763793999999962, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 85.763801999999998, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 515.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-55",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 442.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 3 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-56",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 476.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 64.763794000000004, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 406.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 333.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 2 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-59",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 367.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 43.763798000000001, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 304.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 231.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"args" : [ 1 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-53",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 265.763794000000019, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 22.763795999999999, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-17",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 31.0, 63.0, 129.0, 22.0 ],
													"text" : "s #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 181.216675000000009, 22.301758, 141.0, 22.0 ],
													"text" : "r #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.0, 195.0, 143.0, 22.0 ],
													"text" : "s #0_mapper_from_UI"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 122.0, 127.0, 22.0 ],
													"text" : "r #0_mapper_to_UI"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-13",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 181.216675000000009, 60.5, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 31.0, 20.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"args" : [ 0 ],
													"bgmode" : 0,
													"border" : 0,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-1",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "mapperrow.maxpat",
													"numinlets" : 1,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.0, 156.76379399999999, 105.216674999999995, 25.0 ],
													"presentation" : 1,
													"presentation_rect" : [ -1.0, 1.763794, 101.216674999999995, 21.0 ],
													"viewvisibility" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"source" : [ "obj-100", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-101", 0 ],
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-106", 0 ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-106", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"source" : [ "obj-108", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-107", 0 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-112", 0 ],
													"source" : [ "obj-111", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 0 ],
													"source" : [ "obj-112", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-115", 0 ],
													"source" : [ "obj-114", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-113", 0 ],
													"source" : [ "obj-115", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-118", 0 ],
													"source" : [ "obj-117", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-116", 0 ],
													"source" : [ "obj-118", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-121", 0 ],
													"source" : [ "obj-120", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-119", 0 ],
													"source" : [ "obj-121", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-124", 0 ],
													"source" : [ "obj-123", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-122", 0 ],
													"source" : [ "obj-124", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-127", 0 ],
													"source" : [ "obj-126", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-125", 0 ],
													"source" : [ "obj-127", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-130", 0 ],
													"source" : [ "obj-129", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-128", 0 ],
													"source" : [ "obj-130", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-133", 0 ],
													"source" : [ "obj-132", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-131", 0 ],
													"source" : [ "obj-133", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"source" : [ "obj-135", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-134", 0 ],
													"source" : [ "obj-136", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-139", 0 ],
													"source" : [ "obj-138", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-137", 0 ],
													"source" : [ "obj-139", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-142", 0 ],
													"source" : [ "obj-141", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-140", 0 ],
													"source" : [ "obj-142", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-145", 0 ],
													"source" : [ "obj-144", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-143", 0 ],
													"source" : [ "obj-145", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-148", 0 ],
													"source" : [ "obj-147", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-146", 0 ],
													"source" : [ "obj-148", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-151", 0 ],
													"source" : [ "obj-150", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-149", 0 ],
													"source" : [ "obj-151", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-154", 0 ],
													"source" : [ "obj-153", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-152", 0 ],
													"source" : [ "obj-154", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-157", 0 ],
													"source" : [ "obj-156", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-155", 0 ],
													"source" : [ "obj-157", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-160", 0 ],
													"source" : [ "obj-159", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-158", 0 ],
													"source" : [ "obj-160", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-163", 0 ],
													"source" : [ "obj-162", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-161", 0 ],
													"source" : [ "obj-163", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-166", 0 ],
													"source" : [ "obj-165", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-164", 0 ],
													"source" : [ "obj-166", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-169", 0 ],
													"source" : [ "obj-168", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-167", 0 ],
													"source" : [ "obj-169", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-172", 0 ],
													"source" : [ "obj-171", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-170", 0 ],
													"source" : [ "obj-172", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-175", 0 ],
													"source" : [ "obj-174", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-173", 0 ],
													"source" : [ "obj-175", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-178", 0 ],
													"source" : [ "obj-177", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-176", 0 ],
													"source" : [ "obj-178", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-181", 0 ],
													"source" : [ "obj-180", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-179", 0 ],
													"source" : [ "obj-181", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-184", 0 ],
													"source" : [ "obj-183", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-182", 0 ],
													"source" : [ "obj-184", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-187", 0 ],
													"source" : [ "obj-186", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-185", 0 ],
													"source" : [ "obj-187", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-190", 0 ],
													"source" : [ "obj-189", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-188", 0 ],
													"source" : [ "obj-190", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-193", 0 ],
													"source" : [ "obj-192", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-191", 0 ],
													"source" : [ "obj-193", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-196", 0 ],
													"source" : [ "obj-195", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-194", 0 ],
													"source" : [ "obj-196", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-199", 0 ],
													"source" : [ "obj-198", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-197", 0 ],
													"source" : [ "obj-199", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-202", 0 ],
													"source" : [ "obj-201", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-200", 0 ],
													"source" : [ "obj-202", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-205", 0 ],
													"source" : [ "obj-204", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-203", 0 ],
													"source" : [ "obj-205", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-208", 0 ],
													"source" : [ "obj-207", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-206", 0 ],
													"source" : [ "obj-208", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-211", 0 ],
													"source" : [ "obj-210", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-209", 0 ],
													"source" : [ "obj-211", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-214", 0 ],
													"source" : [ "obj-213", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-212", 0 ],
													"source" : [ "obj-214", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-217", 0 ],
													"source" : [ "obj-216", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-215", 0 ],
													"source" : [ "obj-217", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-220", 0 ],
													"source" : [ "obj-219", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-218", 0 ],
													"source" : [ "obj-220", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-223", 0 ],
													"source" : [ "obj-222", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-221", 0 ],
													"source" : [ "obj-223", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-226", 0 ],
													"source" : [ "obj-225", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-224", 0 ],
													"source" : [ "obj-226", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-229", 0 ],
													"source" : [ "obj-228", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-227", 0 ],
													"source" : [ "obj-229", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-232", 0 ],
													"source" : [ "obj-231", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-230", 0 ],
													"source" : [ "obj-232", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-235", 0 ],
													"source" : [ "obj-234", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-233", 0 ],
													"source" : [ "obj-235", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-238", 0 ],
													"source" : [ "obj-237", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-236", 0 ],
													"source" : [ "obj-238", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-241", 0 ],
													"source" : [ "obj-240", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-239", 0 ],
													"source" : [ "obj-241", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-244", 0 ],
													"source" : [ "obj-243", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-242", 0 ],
													"source" : [ "obj-244", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-247", 0 ],
													"source" : [ "obj-246", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-245", 0 ],
													"source" : [ "obj-247", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-250", 0 ],
													"source" : [ "obj-249", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-248", 0 ],
													"source" : [ "obj-250", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-253", 0 ],
													"source" : [ "obj-252", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-251", 0 ],
													"source" : [ "obj-253", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-256", 0 ],
													"source" : [ "obj-255", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-254", 0 ],
													"source" : [ "obj-256", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-259", 0 ],
													"source" : [ "obj-258", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-257", 0 ],
													"source" : [ "obj-259", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-262", 0 ],
													"source" : [ "obj-261", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-260", 0 ],
													"source" : [ "obj-262", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-265", 0 ],
													"source" : [ "obj-264", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-263", 0 ],
													"source" : [ "obj-265", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-268", 0 ],
													"source" : [ "obj-267", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-266", 0 ],
													"source" : [ "obj-268", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-271", 0 ],
													"source" : [ "obj-270", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-269", 0 ],
													"source" : [ "obj-271", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-274", 0 ],
													"source" : [ "obj-273", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-272", 0 ],
													"source" : [ "obj-274", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-277", 0 ],
													"source" : [ "obj-276", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-275", 0 ],
													"source" : [ "obj-277", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-280", 0 ],
													"source" : [ "obj-279", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-278", 0 ],
													"source" : [ "obj-280", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-283", 0 ],
													"source" : [ "obj-282", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-281", 0 ],
													"source" : [ "obj-283", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-286", 0 ],
													"source" : [ "obj-285", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-284", 0 ],
													"source" : [ "obj-286", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-289", 0 ],
													"source" : [ "obj-288", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-287", 0 ],
													"source" : [ "obj-289", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-292", 0 ],
													"source" : [ "obj-291", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-290", 0 ],
													"source" : [ "obj-292", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-295", 0 ],
													"source" : [ "obj-294", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-293", 0 ],
													"source" : [ "obj-295", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-298", 0 ],
													"source" : [ "obj-297", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-296", 0 ],
													"source" : [ "obj-298", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-301", 0 ],
													"source" : [ "obj-300", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-299", 0 ],
													"source" : [ "obj-301", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-304", 0 ],
													"source" : [ "obj-303", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-302", 0 ],
													"source" : [ "obj-304", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-307", 0 ],
													"source" : [ "obj-306", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-305", 0 ],
													"source" : [ "obj-307", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-310", 0 ],
													"source" : [ "obj-309", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-308", 0 ],
													"source" : [ "obj-310", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-313", 0 ],
													"source" : [ "obj-312", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-311", 0 ],
													"source" : [ "obj-313", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-316", 0 ],
													"source" : [ "obj-315", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-314", 0 ],
													"source" : [ "obj-316", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-319", 0 ],
													"source" : [ "obj-318", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-317", 0 ],
													"source" : [ "obj-319", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-322", 0 ],
													"source" : [ "obj-321", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-320", 0 ],
													"source" : [ "obj-322", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-325", 0 ],
													"source" : [ "obj-324", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-323", 0 ],
													"source" : [ "obj-325", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-328", 0 ],
													"source" : [ "obj-327", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-326", 0 ],
													"source" : [ "obj-328", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-331", 0 ],
													"source" : [ "obj-330", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-329", 0 ],
													"source" : [ "obj-331", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-334", 0 ],
													"source" : [ "obj-333", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-332", 0 ],
													"source" : [ "obj-334", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-337", 0 ],
													"source" : [ "obj-336", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-335", 0 ],
													"source" : [ "obj-337", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-340", 0 ],
													"source" : [ "obj-339", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-338", 0 ],
													"source" : [ "obj-340", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-343", 0 ],
													"source" : [ "obj-342", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-341", 0 ],
													"source" : [ "obj-343", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-346", 0 ],
													"source" : [ "obj-345", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-344", 0 ],
													"source" : [ "obj-346", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-349", 0 ],
													"source" : [ "obj-348", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-347", 0 ],
													"source" : [ "obj-349", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-352", 0 ],
													"source" : [ "obj-351", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-350", 0 ],
													"source" : [ "obj-352", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-355", 0 ],
													"source" : [ "obj-354", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-353", 0 ],
													"source" : [ "obj-355", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-358", 0 ],
													"source" : [ "obj-357", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-356", 0 ],
													"source" : [ "obj-358", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-361", 0 ],
													"source" : [ "obj-360", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-359", 0 ],
													"source" : [ "obj-361", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-364", 0 ],
													"source" : [ "obj-363", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-362", 0 ],
													"source" : [ "obj-364", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-367", 0 ],
													"source" : [ "obj-366", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-365", 0 ],
													"source" : [ "obj-367", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-370", 0 ],
													"source" : [ "obj-369", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-368", 0 ],
													"source" : [ "obj-370", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-373", 0 ],
													"source" : [ "obj-372", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-371", 0 ],
													"source" : [ "obj-373", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-376", 0 ],
													"source" : [ "obj-375", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-374", 0 ],
													"source" : [ "obj-376", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-379", 0 ],
													"source" : [ "obj-378", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-377", 0 ],
													"source" : [ "obj-379", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-382", 0 ],
													"source" : [ "obj-381", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-380", 0 ],
													"source" : [ "obj-382", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-385", 0 ],
													"source" : [ "obj-384", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-383", 0 ],
													"source" : [ "obj-385", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-388", 0 ],
													"source" : [ "obj-387", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-386", 0 ],
													"source" : [ "obj-388", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-67", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-79", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-82", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-86", 0 ],
													"source" : [ "obj-85", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-87", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-91", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-95", 0 ],
													"source" : [ "obj-94", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-96", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-97", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"source" : [ "obj-99", 0 ]
												}

											}
 ],
										"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
									}
,
									"patching_rect" : [ 816.452881000000048, 431.848754999999983, 99.430785999999998, 159.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.506493, 56.604866000000001, 105.616196000000002, 135.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Bold Regular",
									"fontsize" : 9.0,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.952862, 49.446143999999997, 113.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.122688, 19.126470999999999, 113.0, 17.0 ],
									"text" : "ARBITRARY NOTE MAP",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Bold Regular",
									"fontsize" : 9.0,
									"id" : "obj-174",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 61.452862000000003, 529.934264999999982, 29.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -0.493507, 195.321381000000002, 29.0, 17.0 ],
									"text" : "MIDI",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Ableton Sans Bold Regular",
									"fontsize" : 9.0,
									"id" : "obj-113",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 180.952866, 126.315299999999993, 29.0, 17.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 2.263977, -0.030966, 29.0, 17.0 ],
									"text" : "MIDI",
									"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 0.952862, 126.315299999999993, 59.5, 22.0 ],
									"restore" : 									{
										"initalize" : [ 0.0 ],
										"live.text[1]" : [ 0.0 ],
										"mute" : [ 0.0 ],
										"save" : [ 0.0 ]
									}
,
									"text" : "autopattr",
									"varname" : "u314002271"
								}

							}
, 							{
								"box" : 								{
									"angle" : 0.0,
									"bgcolor" : [ 0.0, 0.0, 0.0, 0.46 ],
									"id" : "obj-103",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 148.228348000000011, 24.832619000000001, 57.0, 9.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 114.437286, 41.888351, 276.562714000000028, 148.471602999999988 ],
									"proportion" : 0.39
								}

							}
, 							{
								"box" : 								{
									"angle" : 0.0,
									"background" : 1,
									"bgcolor" : [ 0.137255, 0.145098, 0.160784, 0.65 ],
									"id" : "obj-18",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 48.952801000000001, 24.832619000000001, 44.0, 9.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -0.493507, 36.888351, 522.268798999999944, 158.433029000000005 ],
									"proportion" : 0.39,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"angle" : 0.0,
									"background" : 1,
									"bgcolor" : [ 0.367404, 0.389405, 0.430238, 1.0 ],
									"id" : "obj-21",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 96.952834999999993, 24.832619000000001, 44.0, 9.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -0.493507, 16.888351, 522.268798999999944, 178.433029000000005 ],
									"proportion" : 0.39,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"angle" : 0.0,
									"background" : 1,
									"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-14",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 0.952862, 24.832619000000001, 44.0, 9.0 ],
									"presentation" : 1,
									"presentation_rect" : [ -0.493507, -0.111649, 522.268798999999944, 232.433029000000005 ],
									"proportion" : 0.39,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-136",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1885.222533999999996, 1451.0, 59.0, 22.0 ],
									"text" : "sort -1 -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1287.855103000000099, 274.061919999999986, 50.0, 22.0 ],
									"text" : "clear"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-101", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-110", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-110", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-131", 0 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 1 ],
									"source" : [ "obj-127", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"order" : 1,
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-13", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"order" : 0,
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"order" : 1,
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 1 ],
									"order" : 0,
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"order" : 2,
									"source" : [ "obj-131", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-132", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 1 ],
									"source" : [ "obj-34", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-38", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 2 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"order" : 0,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 1 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 0 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-53", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-55", 1 ]
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
									"source" : [ "obj-58", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-59", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-59", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-132", 1 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-107", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-62", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 1 ],
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-74", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-75", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-77", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-79", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-82", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-86", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 766.452881000000048, 207.487488000000013, 644.452881000000048, 207.487488000000013 ],
									"source" : [ "obj-87", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-95", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-99", 0 ]
								}

							}
 ],
						"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ]
					}
,
					"patching_rect" : [ 692.0, 225.0, 401.0, 216.0 ],
					"varname" : "ArbitraryNoteMap",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"clip_size" : 1,
					"id" : "obj-45",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 1131.0, 247.5, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 692.0, 156.0, 59.0, 22.0 ],
					"text" : "pack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 692.0, 122.0, 32.0, 22.0 ],
					"text" : "+ 60"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 692.0, 90.0, 59.0, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1131.0, 83.0, 87.0, 22.0 ],
					"text" : "prepend target"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 885.5, 155.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patching_rect" : [ 885.5, 90.0, 59.0, 22.0 ],
					"text" : "unpack i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 692.0, 56.5, 212.5, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 692.0, 23.5, 55.0, 22.0 ],
					"text" : "r #0zone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 1123.0, 402.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1131.0, 158.5, 135.0, 22.0 ],
					"text" : "poly~ simple_synth~ 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 132.75, 11.0, 78.0, 22.0 ],
					"text" : "r #0setup_ok"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 190.666666666666657, 815.0, 80.0, 22.0 ],
					"text" : "s #0setup_ok"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-42",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 419.25, 46.0, 117.0, 37.0 ],
					"text" : "click here to remove all zones"
				}

			}
, 			{
				"box" : 				{
					"bubble" : 1,
					"id" : "obj-41",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 166.75, 46.0, 115.0, 37.0 ],
					"text" : "click here to (re)create zones"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 311.5, 781.0, 91.0, 22.0 ],
					"text" : "print @popup 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 100.333333333333329, 815.0, 57.0, 22.0 ],
					"text" : "s #0zone"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 815.0, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 304.0, 85.5, 66.0, 22.0 ],
					"text" : "s #0tojweb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 154.25, 307.5, 66.0, 22.0 ],
					"text" : "s #0tojweb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 304.0, 53.5, 106.0, 22.0 ],
					"text" : "remove_all_zones"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 483.0, 64.0, 22.0 ],
					"text" : "r #0tojweb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 205.0, 66.0, 22.0 ],
					"text" : "s #0tojweb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 182.25, 217.5, 42.0, 22.0 ],
					"text" : "+ 0.03"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 154.75, 126.5, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 154.25, 244.0, 47.0, 22.0 ],
					"text" : "pack i f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 182.25, 189.5, 40.0, 22.0 ],
					"text" : "* 0.08"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "float" ],
					"patching_rect" : [ 154.75, 158.5, 46.5, 22.0 ],
					"text" : "t i f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 132.75, 52.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 132.75, 88.5, 41.0, 22.0 ],
					"text" : "uzi 12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 154.25, 275.5, 175.0, 22.0 ],
					"text" : "add_zone $1 $2 0.33 0.05 0.33"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 10.0, 781.0, 290.0, 22.0 ],
					"text" : "route console zone setup_ok"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 131.0, 79.0, 35.0 ],
					"text" : "tosymbol @separator"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 105.0, 101.0, 22.0 ],
					"text" : "pack s index.html"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 40.0, 34.0, 22.0 ],
					"text" : "path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 10.0, 71.0, 69.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 172.5, 67.0, 22.0 ],
					"text" : "readfile $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 10.0, 11.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-1",
					"maxclass" : "jweb",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 10.0, 513.5, 1290.0, 244.0 ],
					"rendermode" : 0,
					"url" : "file:///Users/paweljanicki/Documents/projects/MaxAndP5js/v05/MaxAndP5js/02_camera_and_motion_detection/index.html"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 1,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"midpoints" : [ 19.5, 766.25, 321.0, 766.25 ],
					"order" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"hidden" : 1,
					"midpoints" : [ 1211.25, 324.5, 1187.875, 324.5, 1187.875, 240.5, 1140.5, 240.5 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"midpoints" : [ 895.0, 191.0, 1086.75, 191.0, 1086.75, 68.0, 1140.5, 68.0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 1 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-45", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 701.5, 451.0, 1103.0, 451.0, 1103.0, 110.0, 1124.5, 110.0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"midpoints" : [ 1241.5, 219.0, 1169.5, 219.0 ],
					"source" : [ "obj-48", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-55", 0 ]
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
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-46::obj-9::obj-172::obj-8" : [ "1143_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-80::obj-8" : [ "1170_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-319::obj-8" : [ "1096_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-208::obj-8" : [ "1059_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-157::obj-8" : [ "1138_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-349::obj-8" : [ "1106_notemap", "notemap", 0 ],
			"obj-46::obj-29" : [ "mute", "mute", 0 ],
			"obj-46::obj-9::obj-49::obj-8" : [ "1165_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-142::obj-8" : [ "1133_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-271::obj-8" : [ "1080_notemap", "notemap", 0 ],
			"obj-46::obj-80" : [ "save", "save", 0 ],
			"obj-46::obj-9::obj-34::obj-8" : [ "1160_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-343::obj-8" : [ "1104_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-265::obj-8" : [ "1078_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-115::obj-8" : [ "1124_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-328::obj-8" : [ "1099_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-241::obj-8" : [ "1070_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-217::obj-8" : [ "1062_notemap", "notemap", 0 ],
			"obj-46::obj-41::obj-2" : [ "pastebang[1]", "pastebang", 0 ],
			"obj-46::obj-9::obj-19::obj-8" : [ "1155_notemap", "notemap", 0 ],
			"obj-46::obj-56" : [ "initalize", "initalize", 0 ],
			"obj-46::obj-9::obj-53::obj-8" : [ "1182_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-337::obj-8" : [ "1102_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-193::obj-8" : [ "1150_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-298::obj-8" : [ "1089_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-280::obj-8" : [ "1083_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-65::obj-8" : [ "1177_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-103::obj-8" : [ "1120_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-229::obj-8" : [ "1066_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-178::obj-8" : [ "1145_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-86::obj-8" : [ "1172_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-163::obj-8" : [ "1140_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-127::obj-8" : [ "1128_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-385::obj-8" : [ "1118_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-100::obj-8" : [ "1167_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-136::obj-8" : [ "1131_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-307::obj-8" : [ "1092_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-289::obj-8" : [ "1086_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-148::obj-8" : [ "1135_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-253::obj-8" : [ "1074_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-40::obj-8" : [ "1162_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-379::obj-8" : [ "1116_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-247::obj-8" : [ "1072_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-25::obj-8" : [ "1157_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-376::obj-8" : [ "1115_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-1::obj-8" : [ "1183_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-316::obj-8" : [ "1095_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-205::obj-8" : [ "1058_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-5::obj-8" : [ "1152_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-109::obj-8" : [ "1122_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-71::obj-8" : [ "1179_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-370::obj-8" : [ "1113_notemap", "notemap", 0 ],
			"obj-45" : [ "live.gain~", "live.gain~", 0 ],
			"obj-46::obj-9::obj-184::obj-8" : [ "1147_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-92::obj-8" : [ "1174_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-169::obj-8" : [ "1142_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-364::obj-8" : [ "1111_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-325::obj-8" : [ "1098_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-214::obj-8" : [ "1061_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-77::obj-8" : [ "1169_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-154::obj-8" : [ "1137_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-46::obj-8" : [ "1164_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-358::obj-8" : [ "1109_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-277::obj-8" : [ "1082_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-139::obj-8" : [ "1132_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-226::obj-8" : [ "1065_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-31::obj-8" : [ "1159_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-223::obj-8" : [ "1064_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-352::obj-8" : [ "1107_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-11::obj-8" : [ "1154_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-59::obj-8" : [ "1181_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-304::obj-8" : [ "1091_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-286::obj-8" : [ "1085_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-190::obj-8" : [ "1149_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-346::obj-8" : [ "1105_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-250::obj-8" : [ "1073_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-62::obj-8" : [ "1176_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-118::obj-8" : [ "1125_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-331::obj-8" : [ "1100_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-244::obj-8" : [ "1071_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-175::obj-8" : [ "1144_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-83::obj-8" : [ "1171_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-340::obj-8" : [ "1103_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-160::obj-8" : [ "1139_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-112::obj-8" : [ "1123_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-313::obj-8" : [ "1094_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-295::obj-8" : [ "1088_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-238::obj-8" : [ "1069_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-202::obj-8" : [ "1057_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-97::obj-8" : [ "1166_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-106::obj-8" : [ "1121_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-145::obj-8" : [ "1134_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-334::obj-8" : [ "1101_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-37::obj-8" : [ "1161_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-130::obj-8" : [ "1129_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-388::obj-8" : [ "1119_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-22::obj-8" : [ "1156_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-322::obj-8" : [ "1097_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-262::obj-8" : [ "1077_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-211::obj-8" : [ "1060_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-196::obj-8" : [ "1151_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-124::obj-8" : [ "1127_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-382::obj-8" : [ "1117_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-235::obj-8" : [ "1068_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-68::obj-8" : [ "1178_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-274::obj-8" : [ "1081_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-181::obj-8" : [ "1146_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-268::obj-8" : [ "1079_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-89::obj-8" : [ "1173_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-220::obj-8" : [ "1063_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-166::obj-8" : [ "1141_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-74::obj-8" : [ "1168_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-373::obj-8" : [ "1114_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-259::obj-8" : [ "1076_notemap", "notemap", 0 ],
			"obj-46::obj-58" : [ "reverse", "reverse", 0 ],
			"obj-46::obj-9::obj-151::obj-8" : [ "1136_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-301::obj-8" : [ "1090_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-283::obj-8" : [ "1084_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-43::obj-8" : [ "1163_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-121::obj-8" : [ "1126_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-232::obj-8" : [ "1067_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-367::obj-8" : [ "1112_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-28::obj-8" : [ "1158_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-8::obj-8" : [ "1153_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-361::obj-8" : [ "1110_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-310::obj-8" : [ "1093_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-292::obj-8" : [ "1087_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-199::obj-8" : [ "1056_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-56::obj-8" : [ "1180_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-133::obj-8" : [ "1130_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-256::obj-8" : [ "1075_notemap", "notemap", 0 ],
			"obj-46::obj-23::obj-2" : [ "pastebang", "pastebang", 0 ],
			"obj-46::obj-9::obj-187::obj-8" : [ "1148_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-95::obj-8" : [ "1175_notemap", "notemap", 0 ],
			"obj-46::obj-9::obj-355::obj-8" : [ "1108_notemap", "notemap", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-46::obj-9::obj-172::obj-8" : 				{
					"parameter_longname" : "1143_notemap"
				}
,
				"obj-46::obj-9::obj-80::obj-8" : 				{
					"parameter_longname" : "1170_notemap"
				}
,
				"obj-46::obj-9::obj-319::obj-8" : 				{
					"parameter_longname" : "1096_notemap"
				}
,
				"obj-46::obj-9::obj-208::obj-8" : 				{
					"parameter_longname" : "1059_notemap"
				}
,
				"obj-46::obj-9::obj-157::obj-8" : 				{
					"parameter_longname" : "1138_notemap"
				}
,
				"obj-46::obj-9::obj-349::obj-8" : 				{
					"parameter_longname" : "1106_notemap"
				}
,
				"obj-46::obj-9::obj-49::obj-8" : 				{
					"parameter_longname" : "1165_notemap"
				}
,
				"obj-46::obj-9::obj-142::obj-8" : 				{
					"parameter_longname" : "1133_notemap"
				}
,
				"obj-46::obj-9::obj-271::obj-8" : 				{
					"parameter_longname" : "1080_notemap"
				}
,
				"obj-46::obj-9::obj-34::obj-8" : 				{
					"parameter_longname" : "1160_notemap"
				}
,
				"obj-46::obj-9::obj-343::obj-8" : 				{
					"parameter_longname" : "1104_notemap"
				}
,
				"obj-46::obj-9::obj-265::obj-8" : 				{
					"parameter_longname" : "1078_notemap"
				}
,
				"obj-46::obj-9::obj-115::obj-8" : 				{
					"parameter_longname" : "1124_notemap"
				}
,
				"obj-46::obj-9::obj-328::obj-8" : 				{
					"parameter_longname" : "1099_notemap"
				}
,
				"obj-46::obj-9::obj-241::obj-8" : 				{
					"parameter_longname" : "1070_notemap"
				}
,
				"obj-46::obj-9::obj-217::obj-8" : 				{
					"parameter_longname" : "1062_notemap"
				}
,
				"obj-46::obj-41::obj-2" : 				{
					"parameter_longname" : "pastebang[1]"
				}
,
				"obj-46::obj-9::obj-19::obj-8" : 				{
					"parameter_longname" : "1155_notemap"
				}
,
				"obj-46::obj-9::obj-53::obj-8" : 				{
					"parameter_longname" : "1182_notemap"
				}
,
				"obj-46::obj-9::obj-337::obj-8" : 				{
					"parameter_longname" : "1102_notemap"
				}
,
				"obj-46::obj-9::obj-193::obj-8" : 				{
					"parameter_longname" : "1150_notemap"
				}
,
				"obj-46::obj-9::obj-298::obj-8" : 				{
					"parameter_longname" : "1089_notemap"
				}
,
				"obj-46::obj-9::obj-280::obj-8" : 				{
					"parameter_longname" : "1083_notemap"
				}
,
				"obj-46::obj-9::obj-65::obj-8" : 				{
					"parameter_longname" : "1177_notemap"
				}
,
				"obj-46::obj-9::obj-103::obj-8" : 				{
					"parameter_longname" : "1120_notemap"
				}
,
				"obj-46::obj-9::obj-229::obj-8" : 				{
					"parameter_longname" : "1066_notemap"
				}
,
				"obj-46::obj-9::obj-178::obj-8" : 				{
					"parameter_longname" : "1145_notemap"
				}
,
				"obj-46::obj-9::obj-86::obj-8" : 				{
					"parameter_longname" : "1172_notemap"
				}
,
				"obj-46::obj-9::obj-163::obj-8" : 				{
					"parameter_longname" : "1140_notemap"
				}
,
				"obj-46::obj-9::obj-127::obj-8" : 				{
					"parameter_longname" : "1128_notemap"
				}
,
				"obj-46::obj-9::obj-385::obj-8" : 				{
					"parameter_longname" : "1118_notemap"
				}
,
				"obj-46::obj-9::obj-100::obj-8" : 				{
					"parameter_longname" : "1167_notemap"
				}
,
				"obj-46::obj-9::obj-136::obj-8" : 				{
					"parameter_longname" : "1131_notemap"
				}
,
				"obj-46::obj-9::obj-307::obj-8" : 				{
					"parameter_longname" : "1092_notemap"
				}
,
				"obj-46::obj-9::obj-289::obj-8" : 				{
					"parameter_longname" : "1086_notemap"
				}
,
				"obj-46::obj-9::obj-148::obj-8" : 				{
					"parameter_longname" : "1135_notemap"
				}
,
				"obj-46::obj-9::obj-253::obj-8" : 				{
					"parameter_longname" : "1074_notemap"
				}
,
				"obj-46::obj-9::obj-40::obj-8" : 				{
					"parameter_longname" : "1162_notemap"
				}
,
				"obj-46::obj-9::obj-379::obj-8" : 				{
					"parameter_longname" : "1116_notemap"
				}
,
				"obj-46::obj-9::obj-247::obj-8" : 				{
					"parameter_longname" : "1072_notemap"
				}
,
				"obj-46::obj-9::obj-25::obj-8" : 				{
					"parameter_longname" : "1157_notemap"
				}
,
				"obj-46::obj-9::obj-376::obj-8" : 				{
					"parameter_longname" : "1115_notemap"
				}
,
				"obj-46::obj-9::obj-1::obj-8" : 				{
					"parameter_longname" : "1183_notemap"
				}
,
				"obj-46::obj-9::obj-316::obj-8" : 				{
					"parameter_longname" : "1095_notemap"
				}
,
				"obj-46::obj-9::obj-205::obj-8" : 				{
					"parameter_longname" : "1058_notemap"
				}
,
				"obj-46::obj-9::obj-5::obj-8" : 				{
					"parameter_longname" : "1152_notemap"
				}
,
				"obj-46::obj-9::obj-109::obj-8" : 				{
					"parameter_longname" : "1122_notemap"
				}
,
				"obj-46::obj-9::obj-71::obj-8" : 				{
					"parameter_longname" : "1179_notemap"
				}
,
				"obj-46::obj-9::obj-370::obj-8" : 				{
					"parameter_longname" : "1113_notemap"
				}
,
				"obj-46::obj-9::obj-184::obj-8" : 				{
					"parameter_longname" : "1147_notemap"
				}
,
				"obj-46::obj-9::obj-92::obj-8" : 				{
					"parameter_longname" : "1174_notemap"
				}
,
				"obj-46::obj-9::obj-169::obj-8" : 				{
					"parameter_longname" : "1142_notemap"
				}
,
				"obj-46::obj-9::obj-364::obj-8" : 				{
					"parameter_longname" : "1111_notemap"
				}
,
				"obj-46::obj-9::obj-325::obj-8" : 				{
					"parameter_longname" : "1098_notemap"
				}
,
				"obj-46::obj-9::obj-214::obj-8" : 				{
					"parameter_longname" : "1061_notemap"
				}
,
				"obj-46::obj-9::obj-77::obj-8" : 				{
					"parameter_longname" : "1169_notemap"
				}
,
				"obj-46::obj-9::obj-154::obj-8" : 				{
					"parameter_longname" : "1137_notemap"
				}
,
				"obj-46::obj-9::obj-46::obj-8" : 				{
					"parameter_longname" : "1164_notemap"
				}
,
				"obj-46::obj-9::obj-358::obj-8" : 				{
					"parameter_longname" : "1109_notemap"
				}
,
				"obj-46::obj-9::obj-277::obj-8" : 				{
					"parameter_longname" : "1082_notemap"
				}
,
				"obj-46::obj-9::obj-139::obj-8" : 				{
					"parameter_longname" : "1132_notemap"
				}
,
				"obj-46::obj-9::obj-226::obj-8" : 				{
					"parameter_longname" : "1065_notemap"
				}
,
				"obj-46::obj-9::obj-31::obj-8" : 				{
					"parameter_longname" : "1159_notemap"
				}
,
				"obj-46::obj-9::obj-223::obj-8" : 				{
					"parameter_longname" : "1064_notemap"
				}
,
				"obj-46::obj-9::obj-352::obj-8" : 				{
					"parameter_longname" : "1107_notemap"
				}
,
				"obj-46::obj-9::obj-11::obj-8" : 				{
					"parameter_longname" : "1154_notemap"
				}
,
				"obj-46::obj-9::obj-59::obj-8" : 				{
					"parameter_longname" : "1181_notemap"
				}
,
				"obj-46::obj-9::obj-304::obj-8" : 				{
					"parameter_longname" : "1091_notemap"
				}
,
				"obj-46::obj-9::obj-286::obj-8" : 				{
					"parameter_longname" : "1085_notemap"
				}
,
				"obj-46::obj-9::obj-190::obj-8" : 				{
					"parameter_longname" : "1149_notemap"
				}
,
				"obj-46::obj-9::obj-346::obj-8" : 				{
					"parameter_longname" : "1105_notemap"
				}
,
				"obj-46::obj-9::obj-250::obj-8" : 				{
					"parameter_longname" : "1073_notemap"
				}
,
				"obj-46::obj-9::obj-62::obj-8" : 				{
					"parameter_longname" : "1176_notemap"
				}
,
				"obj-46::obj-9::obj-118::obj-8" : 				{
					"parameter_longname" : "1125_notemap"
				}
,
				"obj-46::obj-9::obj-331::obj-8" : 				{
					"parameter_longname" : "1100_notemap"
				}
,
				"obj-46::obj-9::obj-244::obj-8" : 				{
					"parameter_longname" : "1071_notemap"
				}
,
				"obj-46::obj-9::obj-175::obj-8" : 				{
					"parameter_longname" : "1144_notemap"
				}
,
				"obj-46::obj-9::obj-83::obj-8" : 				{
					"parameter_longname" : "1171_notemap"
				}
,
				"obj-46::obj-9::obj-340::obj-8" : 				{
					"parameter_longname" : "1103_notemap"
				}
,
				"obj-46::obj-9::obj-160::obj-8" : 				{
					"parameter_longname" : "1139_notemap"
				}
,
				"obj-46::obj-9::obj-112::obj-8" : 				{
					"parameter_longname" : "1123_notemap"
				}
,
				"obj-46::obj-9::obj-313::obj-8" : 				{
					"parameter_longname" : "1094_notemap"
				}
,
				"obj-46::obj-9::obj-295::obj-8" : 				{
					"parameter_longname" : "1088_notemap"
				}
,
				"obj-46::obj-9::obj-238::obj-8" : 				{
					"parameter_longname" : "1069_notemap"
				}
,
				"obj-46::obj-9::obj-202::obj-8" : 				{
					"parameter_longname" : "1057_notemap"
				}
,
				"obj-46::obj-9::obj-97::obj-8" : 				{
					"parameter_longname" : "1166_notemap"
				}
,
				"obj-46::obj-9::obj-106::obj-8" : 				{
					"parameter_longname" : "1121_notemap"
				}
,
				"obj-46::obj-9::obj-145::obj-8" : 				{
					"parameter_longname" : "1134_notemap"
				}
,
				"obj-46::obj-9::obj-334::obj-8" : 				{
					"parameter_longname" : "1101_notemap"
				}
,
				"obj-46::obj-9::obj-37::obj-8" : 				{
					"parameter_longname" : "1161_notemap"
				}
,
				"obj-46::obj-9::obj-130::obj-8" : 				{
					"parameter_longname" : "1129_notemap"
				}
,
				"obj-46::obj-9::obj-388::obj-8" : 				{
					"parameter_longname" : "1119_notemap"
				}
,
				"obj-46::obj-9::obj-22::obj-8" : 				{
					"parameter_longname" : "1156_notemap"
				}
,
				"obj-46::obj-9::obj-322::obj-8" : 				{
					"parameter_longname" : "1097_notemap"
				}
,
				"obj-46::obj-9::obj-262::obj-8" : 				{
					"parameter_longname" : "1077_notemap"
				}
,
				"obj-46::obj-9::obj-211::obj-8" : 				{
					"parameter_longname" : "1060_notemap"
				}
,
				"obj-46::obj-9::obj-196::obj-8" : 				{
					"parameter_longname" : "1151_notemap"
				}
,
				"obj-46::obj-9::obj-124::obj-8" : 				{
					"parameter_longname" : "1127_notemap"
				}
,
				"obj-46::obj-9::obj-382::obj-8" : 				{
					"parameter_longname" : "1117_notemap"
				}
,
				"obj-46::obj-9::obj-235::obj-8" : 				{
					"parameter_longname" : "1068_notemap"
				}
,
				"obj-46::obj-9::obj-68::obj-8" : 				{
					"parameter_longname" : "1178_notemap"
				}
,
				"obj-46::obj-9::obj-274::obj-8" : 				{
					"parameter_longname" : "1081_notemap"
				}
,
				"obj-46::obj-9::obj-181::obj-8" : 				{
					"parameter_longname" : "1146_notemap"
				}
,
				"obj-46::obj-9::obj-268::obj-8" : 				{
					"parameter_longname" : "1079_notemap"
				}
,
				"obj-46::obj-9::obj-89::obj-8" : 				{
					"parameter_longname" : "1173_notemap"
				}
,
				"obj-46::obj-9::obj-220::obj-8" : 				{
					"parameter_longname" : "1063_notemap"
				}
,
				"obj-46::obj-9::obj-166::obj-8" : 				{
					"parameter_longname" : "1141_notemap"
				}
,
				"obj-46::obj-9::obj-74::obj-8" : 				{
					"parameter_longname" : "1168_notemap"
				}
,
				"obj-46::obj-9::obj-373::obj-8" : 				{
					"parameter_longname" : "1114_notemap"
				}
,
				"obj-46::obj-9::obj-259::obj-8" : 				{
					"parameter_longname" : "1076_notemap"
				}
,
				"obj-46::obj-9::obj-151::obj-8" : 				{
					"parameter_longname" : "1136_notemap"
				}
,
				"obj-46::obj-9::obj-301::obj-8" : 				{
					"parameter_longname" : "1090_notemap"
				}
,
				"obj-46::obj-9::obj-283::obj-8" : 				{
					"parameter_longname" : "1084_notemap"
				}
,
				"obj-46::obj-9::obj-43::obj-8" : 				{
					"parameter_longname" : "1163_notemap"
				}
,
				"obj-46::obj-9::obj-121::obj-8" : 				{
					"parameter_longname" : "1126_notemap"
				}
,
				"obj-46::obj-9::obj-232::obj-8" : 				{
					"parameter_longname" : "1067_notemap"
				}
,
				"obj-46::obj-9::obj-367::obj-8" : 				{
					"parameter_longname" : "1112_notemap"
				}
,
				"obj-46::obj-9::obj-28::obj-8" : 				{
					"parameter_longname" : "1158_notemap"
				}
,
				"obj-46::obj-9::obj-8::obj-8" : 				{
					"parameter_longname" : "1153_notemap"
				}
,
				"obj-46::obj-9::obj-361::obj-8" : 				{
					"parameter_longname" : "1110_notemap"
				}
,
				"obj-46::obj-9::obj-310::obj-8" : 				{
					"parameter_longname" : "1093_notemap"
				}
,
				"obj-46::obj-9::obj-292::obj-8" : 				{
					"parameter_longname" : "1087_notemap"
				}
,
				"obj-46::obj-9::obj-199::obj-8" : 				{
					"parameter_longname" : "1056_notemap"
				}
,
				"obj-46::obj-9::obj-56::obj-8" : 				{
					"parameter_longname" : "1180_notemap"
				}
,
				"obj-46::obj-9::obj-133::obj-8" : 				{
					"parameter_longname" : "1130_notemap"
				}
,
				"obj-46::obj-9::obj-256::obj-8" : 				{
					"parameter_longname" : "1075_notemap"
				}
,
				"obj-46::obj-9::obj-187::obj-8" : 				{
					"parameter_longname" : "1148_notemap"
				}
,
				"obj-46::obj-9::obj-95::obj-8" : 				{
					"parameter_longname" : "1175_notemap"
				}
,
				"obj-46::obj-9::obj-355::obj-8" : 				{
					"parameter_longname" : "1108_notemap"
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "simple_synth~.maxpat",
				"bootpath" : "~/Documents/projects/MaxAndP5js/v05/MaxAndP5js/02_camera_and_motion_detection",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mapperrow.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pastebang.maxpat",
				"bootpath" : "C74:/packages/BEAP/misc",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.823529411764706, 0.835294117647059, 0.847058823529412, 1.0 ]
	}

}
