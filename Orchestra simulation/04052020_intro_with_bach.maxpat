{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -1646.0, -986.0, 1260.0, 899.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 2,
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
					"id" : "obj-190",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-186",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 125.0, 160.0, 150.0, 89.0 ],
									"text" : "To control the volume in Ableton, we send a 0-127 value to channel aftertouch. We do not use velocity, as it only applies to the note onset"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-176",
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 100.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-174",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 130.0, 90.0, 22.0 ],
									"text" : "scale 0 1 0 127"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-171",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 250.0, 65.0, 22.0 ],
									"text" : "velocity $1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "obj-169",
									"maxclass" : "flonum",
									"maximum" : 127.0,
									"minimum" : 0.0,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 50.0, 160.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 220.0, 55.0, 22.0 ],
									"text" : "select all"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 50.0, 190.0, 29.5, 22.0 ],
									"text" : "t f b"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-187",
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
									"id" : "obj-188",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.5, 332.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-189",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 46.5, 332.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"source" : [ "obj-165", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-189", 0 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"order" : 1,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-188", 0 ],
									"order" : 0,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-189", 0 ],
									"source" : [ "obj-171", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-169", 0 ],
									"source" : [ "obj-174", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-174", 0 ],
									"source" : [ "obj-176", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-176", 0 ],
									"source" : [ "obj-187", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 476.0, 240.0, 119.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p volume processing"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-184",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 975.0, 735.0, 50.0, 50.0 ],
					"text" : "midievent 128 60 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 855.0, 735.0, 50.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-173",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 675.0, 495.0, 150.0, 20.0 ],
					"text" : "Midi channel"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "FullPacket" ],
					"patching_rect" : [ 420.0, 210.0, 131.0, 22.0 ],
					"text" : "o.route /tempo /volume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-163",
					"maxclass" : "gswitch2",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 540.0, 645.0, 39.0, 32.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"items" : [ 1, ",", 2, ",", 3, ",", 4, ",", 5, ",", 6, ",", 7, ",", 8, ",", 9, ",", 10, ",", 11, ",", 12, ",", 13, ",", 14, ",", 15, ",", 16 ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 621.0, 495.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 586.0, 645.0, 165.0, 20.0 ],
					"text" : "loopMIDI to Ableton or VST"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-162",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 450.0, 660.0, 47.0, 22.0 ],
					"text" : "midiout"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-159",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 558.071428571428442, 525.0, 79.0, 22.0 ],
					"text" : "durstretch $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 560.0, 720.0, 109.0, 22.0 ],
					"text" : "prepend midievent"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 560.0, 690.0, 63.0, 22.0 ],
					"text" : "zl group 3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 2,
					"outlettype" : [ "int", "" ],
					"patching_rect" : [ 540.0, 615.0, 100.0, 22.0 ],
					"text" : "midiformat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 560.0, 797.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 560.0, 750.0, 92.5, 22.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~[2]",
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
							"blob" : "12537.CMlaKA....fQPMDZ....ATiLTcG...P.....APTYlEVcrQG...............................Su77CdswFH1Ulbyk1at0iHw3BLh.RYtM1ajklam0iH0QmYsfiH+3COx81az4COGw1ahEFaPElbg0VYzUlby4COV8VZiUVSuQVY9.0arkGOuX0aoMVYM8FYk4COV8VZiU1QrkFYk4CL77hUuk1XkcDaoQVY9vyKGw1ahEFaPElbg0VYzUlby4COSEVavwVYGI2a0AmO73TXsUlOGI2a0AGHwvyKNEVak4CORU1Yo8la9viTkcVZu4FTx8FbkIGcoU1b9vCSucmSuQWY9.COuvza24zazUlO7fTZmglSuQWY9DiL2vyKHk1Yn4zazUlO7vza2YUYr81XoQWd9.COuvza2YUYr81XoQWd9vCRocFZVUFauMVZzkmOwHyM77BRocFZVUFauMVZzkmO7H0auQmSuQWY9XCL77hTu8FcN8Fck4COSEVavwVYSQWXxQmOvvyKSEVavwVYSQWXxQmO7LUXsAGakUjaj4SLyHiL4jCOuLUXsAGakUjaj4COL81avMEcgIGc9zRL77BSu8FbSQWXxQmO7vzauAWQtQlOwHSLwjSN77BSu8FbE4FY9vyTg0FbrUlPkEFcy4CM77xTg0FbrUlPkEFcy4COSEVavwVYV8Fa00VY9.COuLUXsAGakY0arUWak4COSEVavwVYPEla9.COuLUXsAGakAUXt4COSEVavwVYTUmak4CL77xTg0FbrUFU04VY9vyTg0FbrUlQo4VY9.COuLUXsAGakYTZtUlO77hTkcVZu4FTx8FbkIGcoU1b9vyTg0FbrUFTx8FbkIGcoU1b9vyTg0FbrUlQowVYNEVak4yP5vUUyUlbywEYkwFabQTYysFcuAGWS8layABbuUmbfL1asA2aykFco8lafDjXrUFcu4FHLklckwULtbWX1wyKSEVavwVYFkFak4TXsUlO7LUXsAGakYjbg0VYy4SLyHyLv.COuLUXsAGakYjbg0VYy4COuLUXsAGakAkbuAWYxQWZkMmO77hTkcVZu4lO7X0aoMVYPElbg0VYzUlby4COPkFcigFUxE1Xqklam4iSuQWY77BToQ2XnQkbgM1Zo41Y9vyTg0FbrUlTkMWYz4iSu4VY77xTg0FbrUlTkMWYz4COSEVavwVYxwzauAmPuUmajMmOL81avA0ao4FcywyKSEVavwVYxwzauAmPuUmajMmO7LUXsAGakIGUxk1YmUlbM8FYk4CSu8FbSU2bzEVZtwyKSEVavwVYxQkboc1YkIWSuQVY9viQowFckImTuUGco41Y9LUYxkVXrwyKFkFazUlbR8Vczklam4COFkFazUlbwPUdvUlOlQmSu4VY77hQowFckIWLTkGbk4COFkFazUlbxPUdvUlOlQmSu4VY77hQowFckImLTkGbk4COFkFazUlbwrTY4Yzarw1a24CLtTCOuXTZrQWYxEyRkkmQuwFaucmO7XTZrQWYxIyRkkmQuwFaucmOv3RM77hQowFckImLKUVdF8Far81c9vSPsAmUkw1aikFc4QTYvQGZ9XUYrgCL77RPsAmUkw1aikFc4QTYvQGZ9vSSuQlUkw1aikFc4QTYvQGZ9XUYrgCL77RSuQlUkw1aikFc4QTYvQGZ9vCSl81TnEFbkEiOTIWZg41YrUFOuvjYuMEZgAWYw3COLY1aSgVXvUlL9PkboElamwVY77BSl81TnEFbkIiO7vjYuYjbkEWSuQVYw3iQogWYjECLvzTZrwVZyU1Xu4FY77BSl8lQxUVbM8FYkEiO7vjYuYjbkEWSuQVYx3iQogWYjECLvzTZrwVZyU1Xu4FY77BSl8lQxUVbM8FYkIiO7LUYwEyPr81Xq4CQoY2WzvyKSUVbwLDauM1Z9vyTkEWLDklbkMFco8la9XzaxcWXxQ1b77xTkEWLDklbkMFco8la9vyTzUFbSUVbwvTYtcFcn4SQocFZzwyKSQWYvMUYwECSk41YzglO7LUYwIyPr81Xq4CQoY2WzvyKSUVbxLDauM1Z9vyTkEmLDklbkMFco8la9XzaxcWXxQ1b77xTkEmLDklbkMFco8la9vyTzUFbSUVbxvTYtcFcn4SQocFZzwyKSQWYvMUYwICSk41YzglO7DTavUja1MkagAmOS4VXv8jYlwyKA0FbE4lcS4VXv4COM8FYE4lcS4VXv4yTtEFbOYlY77RSuQVQtY2TtEFb9vyS0QGb0Q2Qgkla9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COu7TczAWczcTXo4lO77TczAWczAUXt4CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77xS0QGb0QGTg4lO7X0aoMVYPkFcig1StUlOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKV8VZiUFToQ2Xn8jak4COV8VZiUFToQ2XnQ0cu4CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hUuk1XkAUZzMFZTc2a9vyTg0FbrU1TzElbz4CL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKSEVavwVYSQWXxQmO7LUXsAGakUjaj4SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKSEVavwVYE4FY9vCSu8FbSQWXxQmOvvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvzauA2TzElbz4COL81avUjaj4SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKL81avUjaj4COA0FbAQGcgM1Z9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RPsAWPzQWXislO7DTavgzarQlOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuDTavgzarQlO7DTavQTYiEVd9DCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RPsAGQkMVX44COA0FbSU2bzEVZt4SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKA0FbSU2bzEVZt4COA0FbRUFakE1bk4SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKA0FbRUFakE1bk4COM8FYAQGcgM1Z9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RSuQVPzQWXislO7zzajgzarQlOvvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuzzajgzarQlO7zzajQTYiEVd9.iKy.CLv.CLvDSL4HCL4HSN7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKM8FYDU1XgkmO7zzajMUcyQWXo4lOv3xLv.CLv.CLwDSNx.SNxjCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RSuQ1T0MGcgkla9vSSuQlTkwVYgMWY9.iKy.CLv.CLvDSL4HCL4HSN7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKM8FYRUFakE1bk4COFkFazUlbOUGcvUGcBwVYtQlOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYx8TczAWczIDak4FY9viQowFckIWLPElbw3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckIWLPElbw3COFkFazUlbw.UXxIiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbw.UXxIiO7XTZrQWYxECTgI2L9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxECTgI2L9viQowFckIWLPElbz3SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbw.UXxQiO7XTZrQWYxICTgIWL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxICTgIWL9viQowFckImLPElbx3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckImLPElbx3COFkFazUlbx.UXxMiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbx.UXxMiO7XTZrQWYxICTgIGM9DCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckImLPElbz3COLY1aw.UXxEiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKLY1aw.UXxEiO7vjYuECTgImL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvjYuECTgImL9vCSl8VLPElby3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSl8VLPElby3COLY1ax.UXxEiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKLY1ax.UXxEiO7vjYuICTgImL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvjYuICTgImL9vCSl8lLPElby3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSl8lLPElby3COuX0aoMVYPElbg0VYzUlby4COSQWYvMUYwEiO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO77xTzUFbSUVbw3COSQWYvMUYwIiO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO77xTzUFbSUVbx3COM8FYC8latU1Xzk1atMmO7zzajwTZtslO7zzajM0a0I2Xk4SPsAWQtY2WU4VZv8FagIGOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO7zzajwTZtslO7zzajM0a0I2Xk4SSuQVQtY2WU4VZv8FagIGOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO7zzajwTZtslO7zzajM0a0I2Xk4CSl8VLeUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOLY1ax7UUtkFbuwVXxwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COM8FYLklaq4COM8FYS8VcxMVY9LEckA2TkEWLeUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOSQWYvMUYwIyWU4VZv8FagIGOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO7zzajwTZtslO7zzajM0a0I2Xk4SSoQVZe0zajcEZkUFaeUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlON8lakwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COuzzajMzat4VYiQWZu41b9vyKSEVavwVYGI2a0AmO7.UXzMFZFkFakYzax0VXzYUYxMWZu4lOzvyKPEFciglQowVYF8lbsEFcVUlbyk1at4COPEFciglQowVYTkGbk4CS0MVZjkFc4AUXzMFZFkFakwyKPEFciglQowVYTkGbk4COPIWYyUFcI4lYu4COPIWYyUFcNEVak4CQkYVX0wFc77BTxU1bkQmSg0VY9vCTxU1bkQmQowVYNEVak8hO77BTxU1bkQWRtY1a9vSSoQVZMEFbu3COuH2auQmO"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "3.4.0h 5647.579",
									"origin" : "Grace.dll",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "Grace.dll",
										"plugindisplayname" : "Grace",
										"pluginsavedname" : "~/Desktop/PDM outils externes/Grace/Grace.dll",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "12537.CMlaKA....fQPMDZ....ATiLTcG...P.....APTYlEVcrQG...............................Su77CdswFH1Ulbyk1at0iHw3BLh.RYtM1ajklam0iH0QmYsfiH+3COx81az4COGw1ahEFaPElbg0VYzUlby4COV8VZiUVSuQVY9.0arkGOuX0aoMVYM8FYk4COV8VZiU1QrkFYk4CL77hUuk1XkcDaoQVY9vyKGw1ahEFaPElbg0VYzUlby4COSEVavwVYGI2a0AmO73TXsUlOGI2a0AGHwvyKNEVak4CORU1Yo8la9viTkcVZu4FTx8FbkIGcoU1b9vCSucmSuQWY9.COuvza24zazUlO7fTZmglSuQWY9DiL2vyKHk1Yn4zazUlO7vza2YUYr81XoQWd9.COuvza2YUYr81XoQWd9vCRocFZVUFauMVZzkmOwHyM77BRocFZVUFauMVZzkmO7H0auQmSuQWY9XCL77hTu8FcN8Fck4COSEVavwVYSQWXxQmOvvyKSEVavwVYSQWXxQmO7LUXsAGakUjaj4SLyHiL4jCOuLUXsAGakUjaj4COL81avMEcgIGc9zRL77BSu8FbSQWXxQmO7vzauAWQtQlOwHSLwjSN77BSu8FbE4FY9vyTg0FbrUlPkEFcy4CM77xTg0FbrUlPkEFcy4COSEVavwVYV8Fa00VY9.COuLUXsAGakY0arUWak4COSEVavwVYPEla9.COuLUXsAGakAUXt4COSEVavwVYTUmak4CL77xTg0FbrUFU04VY9vyTg0FbrUlQo4VY9.COuLUXsAGakYTZtUlO77hTkcVZu4FTx8FbkIGcoU1b9vyTg0FbrUFTx8FbkIGcoU1b9vyTg0FbrUlQowVYNEVak4yP5vUUyUlbywEYkwFabQTYysFcuAGWS8layABbuUmbfL1asA2aykFco8lafDjXrUFcu4FHLklckwULtbWX1wyKSEVavwVYFkFak4TXsUlO7LUXsAGakYjbg0VYy4SLyHyLv.COuLUXsAGakYjbg0VYy4COuLUXsAGakAkbuAWYxQWZkMmO77hTkcVZu4lO7X0aoMVYPElbg0VYzUlby4COPkFcigFUxE1Xqklam4iSuQWY77BToQ2XnQkbgM1Zo41Y9vyTg0FbrUlTkMWYz4iSu4VY77xTg0FbrUlTkMWYz4COSEVavwVYxwzauAmPuUmajMmOL81avA0ao4FcywyKSEVavwVYxwzauAmPuUmajMmO7LUXsAGakIGUxk1YmUlbM8FYk4CSu8FbSU2bzEVZtwyKSEVavwVYxQkboc1YkIWSuQVY9viQowFckImTuUGco41Y9LUYxkVXrwyKFkFazUlbR8Vczklam4COFkFazUlbwPUdvUlOlQmSu4VY77hQowFckIWLTkGbk4COFkFazUlbxPUdvUlOlQmSu4VY77hQowFckImLTkGbk4COFkFazUlbwrTY4Yzarw1a24CLtTCOuXTZrQWYxEyRkkmQuwFaucmO7XTZrQWYxIyRkkmQuwFaucmOv3RM77hQowFckImLKUVdF8Far81c9vSPsAmUkw1aikFc4QTYvQGZ9XUYrgCL77RPsAmUkw1aikFc4QTYvQGZ9vSSuQlUkw1aikFc4QTYvQGZ9XUYrgCL77RSuQlUkw1aikFc4QTYvQGZ9vCSl81TnEFbkEiOTIWZg41YrUFOuvjYuMEZgAWYw3COLY1aSgVXvUlL9PkboElamwVY77BSl81TnEFbkIiO7vjYuYjbkEWSuQVYw3iQogWYjECLvzTZrwVZyU1Xu4FY77BSl8lQxUVbM8FYkEiO7vjYuYjbkEWSuQVYx3iQogWYjECLvzTZrwVZyU1Xu4FY77BSl8lQxUVbM8FYkIiO7LUYwEyPr81Xq4CQoY2WzvyKSUVbwLDauM1Z9vyTkEWLDklbkMFco8la9XzaxcWXxQ1b77xTkEWLDklbkMFco8la9vyTzUFbSUVbwvTYtcFcn4SQocFZzwyKSQWYvMUYwECSk41YzglO7LUYwIyPr81Xq4CQoY2WzvyKSUVbxLDauM1Z9vyTkEmLDklbkMFco8la9XzaxcWXxQ1b77xTkEmLDklbkMFco8la9vyTzUFbSUVbxvTYtcFcn4SQocFZzwyKSQWYvMUYwICSk41YzglO7DTavUja1MkagAmOS4VXv8jYlwyKA0FbE4lcS4VXv4COM8FYE4lcS4VXv4yTtEFbOYlY77RSuQVQtY2TtEFb9vyS0QGb0Q2Qgkla9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COu7TczAWczcTXo4lO77TczAWczAUXt4CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77xS0QGb0QGTg4lO7X0aoMVYPkFcig1StUlOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKV8VZiUFToQ2Xn8jak4COV8VZiUFToQ2XnQ0cu4CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hUuk1XkAUZzMFZTc2a9vyTg0FbrU1TzElbz4CL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKSEVavwVYSQWXxQmO7LUXsAGakUjaj4SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKSEVavwVYE4FY9vCSu8FbSQWXxQmOvvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvzauA2TzElbz4COL81avUjaj4SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKL81avUjaj4COA0FbAQGcgM1Z9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RPsAWPzQWXislO7DTavgzarQlOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuDTavgzarQlO7DTavQTYiEVd9DCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RPsAGQkMVX44COA0FbSU2bzEVZt4SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKA0FbSU2bzEVZt4COA0FbRUFakE1bk4SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKA0FbRUFakE1bk4COM8FYAQGcgM1Z9.COM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RSuQVPzQWXislO7zzajgzarQlOvvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuzzajgzarQlO7zzajQTYiEVd9.iKy.CLv.CLvDSL4HCL4HSN7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKM8FYDU1XgkmO7zzajMUcyQWXo4lOv3xLv.CLv.CLwDSNx.SNxjCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77RSuQ1T0MGcgkla9vSSuQlTkwVYgMWY9.iKy.CLv.CLvDSL4HCL4HSN7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKM8FYRUFakE1bk4COFkFazUlbOUGcvUGcBwVYtQlOwvSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYx8TczAWczIDak4FY9viQowFckIWLPElbw3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckIWLPElbw3COFkFazUlbw.UXxIiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbw.UXxIiO7XTZrQWYxECTgI2L9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxECTgI2L9viQowFckIWLPElbz3SL7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbw.UXxQiO7XTZrQWYxICTgIWL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuXTZrQWYxICTgIWL9viQowFckImLPElbx3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckImLPElbx3COFkFazUlbx.UXxMiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKFkFazUlbx.UXxMiO7XTZrQWYxICTgIGM9DCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77hQowFckImLPElbz3COLY1aw.UXxEiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKLY1aw.UXxEiO7vjYuECTgImL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvjYuECTgImL9vCSl8VLPElby3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSl8VLPElby3COLY1ax.UXxEiOv3RM7zzajETauUmazEiOvvyKM8FYA01a04Fcw3COM8FYA01a04Fcx3CL77RSuQVPs8VctQmL9vSSuQVPs8VctQ2L9.COuzzajETauUmazMiO7zzajETauUmazQiOvvyKM8FYA01a04Fcz3COM8FYA01a04Fc03CL77RSuQVPs8VctQWM9vSSuQVPs8VctQmM9.COuzzajETauUmazYiO7zzajETauUmazciOvvyKM8FYA01a04Fc23COM8FYA01a04Fc33CL77RSuQVPs8VctQGN9vyKLY1ax.UXxEiO7vjYuICTgImL9.iK0vSSuQVPs8VctQWL9.COuzzajETauUmazEiO7zzajETauUmazIiOvvyKM8FYA01a04Fcx3COM8FYA01a04Fcy3CL77RSuQVPs8VctQ2L9vSSuQVPs8VctQGM9.COuzzajETauUmazQiO7zzajETauUmazUiOvvyKM8FYA01a04Fc03COM8FYA01a04Fc13CL77RSuQVPs8VctQmM9vSSuQVPs8VctQ2M9.COuzzajETauUmazciO7zzajETauUmazgiOvvyKM8FYA01a04Fc33COuvjYuICTgImL9vCSl8lLPElby3CLtTCOM8FYA01a04Fcw3CL77RSuQVPs8VctQWL9vSSuQVPs8VctQmL9.COuzzajETauUmazIiO7zzajETauUmazMiOvvyKM8FYA01a04Fcy3COM8FYA01a04Fcz3CL77RSuQVPs8VctQGM9vSSuQVPs8VctQWM9.COuzzajETauUmazUiO7zzajETauUmazYiOvvyKM8FYA01a04Fc13COM8FYA01a04Fc23CL77RSuQVPs8VctQ2M9vSSuQVPs8VctQGN9.COuzzajETauUmazgiO77BSl8lLPElby3COuX0aoMVYPElbg0VYzUlby4COSQWYvMUYwEiO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO77xTzUFbSUVbw3COSQWYvMUYwIiO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO7LEckAmUgwVck4CL77xTzUFbVEFa0UlO77xTzUFbSUVbx3COM8FYC8latU1Xzk1atMmO7zzajwTZtslO7zzajM0a0I2Xk4SPsAWQtY2WU4VZv8FagIGOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO7zzajwTZtslO7zzajM0a0I2Xk4SSuQVQtY2WU4VZv8FagIGOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO7zzajwTZtslO7zzajM0a0I2Xk4CSl8VLeUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOLY1ax7UUtkFbuwVXxwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COM8FYLklaq4COM8FYS8VcxMVY9LEckA2TkEWLeUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlOSQWYvMUYwIyWU4VZv8FagIGOuzzajM0a0I2Xk4COM8FYVkVX93zatUFOuzzajYUZg4COIMWSuQVS0QWY9XTXrMWY77RRy0zaj0TczUlO7zzajM0a0I2XkA0arElboQWd9TkaoA2arElb77RSuQ1TuUmbiUFTuwVXxkFc44COuzzajwTZtslO7zzajwTZtslO7zzajM0a0I2Xk4SSoQVZe0zajcEZkUFaeUkaoA2arElb77RSuQ1TuUmbiUlO7zzajYUZg4iSu4VY77RSuQlUoElO7jzbM8FYMUGck4iQgw1bkwyKIMWSuQVS0QWY9vSSuQ1TuUmbiUFTuwVXxkFc44SUtkFbuwVXxwyKM8FYS8VcxMVYP8FagIWZzkmO77RSuQFSo41Z9vSSuQFSo41Z9vSSuQ1TuUmbiUlON8lakwyKM8FYS8VcxMVY9vSSuQlUoElON8lakwyKM8FYVkVX9vSRy0zaj0TczUlOFEFayUFOujzbM8FYMUGck4COM8FYS8VcxMVYP8FagIWZzkmOU4VZv8FagIGOuzzajM0a0I2XkA0arElboQWd9vyKM8FYLklaq4COuzzajMzat4VYiQWZu41b9vyKSEVavwVYGI2a0AmO7.UXzMFZFkFakYzax0VXzYUYxMWZu4lOzvyKPEFciglQowVYF8lbsEFcVUlbyk1at4COPEFciglQowVYTkGbk4CS0MVZjkFc4AUXzMFZFkFakwyKPEFciglQowVYTkGbk4COPIWYyUFcI4lYu4COPIWYyUFcNEVak4CQkYVX0wFc77BTxU1bkQmSg0VY9vCTxU1bkQmQowVYNEVak8hO77BTxU1bkQWRtY1a9vSSoQVZMEFbu3COuH2auQmO"
									}
,
									"fileref" : 									{
										"name" : "3.4.0h 5647.579",
										"filename" : "3.4.0h 5647.579.maxsnap",
										"filepath" : "D:/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "ebe4cdef31d260ccf698ee630d090b57"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~[2]",
					"viewvisibility" : 0
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-79",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 540.0, 555.0, 250.0, 22.0 ],
					"text" : "bach.ezmidiplay @noteout 0 @repeatmode 2"
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
					"patching_rect" : [ 675.0, 763.0, 70.0, 23.0 ],
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
					"patching_rect" : [ 675.0, 725.0, 70.0, 23.0 ],
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
					"patching_rect" : [ 675.0, 690.0, 70.0, 23.0 ],
					"text" : "plug"
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
					"patching_rect" : [ 1515.0, 240.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1515.0, 270.0, 196.0, 22.0 ],
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
					"patching_rect" : [ 1515.0, 300.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1515.0, 330.0, 210.0, 22.0 ],
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
					"patching_rect" : [ 1730.5, 270.0, 158.0, 22.0 ],
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
					"patching_rect" : [ 480.0, 300.0, 144.0, 22.0 ],
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
					"patching_rect" : [ 1210.5, 360.0, 526.0, 120.0 ],
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
					"patching_rect" : [ 1645.5, 525.0, 50.0, 22.0 ],
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
					"patching_rect" : [ 1750.5, 495.0, 120.0, 22.0 ],
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
					"patching_rect" : [ 1755.0, 360.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 1645.071428571428442, 495.0, 95.0, 22.0 ],
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
					"patching_rect" : [ 1755.0, 420.0, 47.0, 22.0 ],
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
					"patching_rect" : [ 1755.0, 390.0, 76.0, 22.0 ],
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
					"patching_rect" : [ 1440.0, 270.0, 29.5, 22.0 ],
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
					"patching_rect" : [ 1440.0, 300.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1440.0, 330.0, 67.0, 22.0 ],
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
							"revision" : 4,
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
						"assistshowspatchername" : 0,
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
					"patching_rect" : [ 1215.0, 300.0, 94.0, 22.0 ],
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
							"revision" : 4,
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
						"assistshowspatchername" : 0,
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
					"patching_rect" : [ 1320.0, 300.0, 94.0, 22.0 ],
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
					"patching_rect" : [ 1215.0, 270.0, 155.0, 22.0 ],
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
					"patching_rect" : [ 1215.0, 240.0, 113.0, 22.0 ],
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
					"patching_rect" : [ 1215.0, 330.0, 31.0, 22.0 ],
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
					"patching_rect" : [ 1320.0, 330.0, 31.0, 22.0 ],
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
							"revision" : 4,
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
						"assistshowspatchername" : 0,
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
							"revision" : 4,
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
						"assistshowspatchername" : 0,
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
					"patching_rect" : [ 105.0, 180.0, 99.0, 22.0 ],
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
					"loop" : [ 0.0, 3588.345120226307245 ],
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
					"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 2, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 3, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 4, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 5, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "]", "[", "midichannels", 1, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "_x_x_x_x_bach_float64_x_x_x_x_", 72899016, 1085033212, 127, "[", "breakpoints", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", 0, "]", 0, "]", 0, "]" ],
					"whole_roll_data_count" : [ 1 ],
					"zoom" : 78.90625
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
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
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
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
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-159", 0 ]
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
					"destination" : [ "obj-162", 0 ],
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-163", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-164", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 4 ],
					"source" : [ "obj-190", 1 ]
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
					"destination" : [ "obj-15", 0 ],
					"order" : 2,
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
					"destination" : [ "obj-163", 1 ],
					"order" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 1 ],
					"order" : 0,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 1 ],
					"source" : [ "obj-20", 1 ]
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
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-376", 0 ]
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
					"destination" : [ "obj-61", 1 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
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
					"order" : 1,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"order" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"order" : 2,
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
					"destination" : [ "obj-159", 0 ],
					"order" : 0,
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 1,
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
					"destination" : [ "obj-63", 0 ],
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
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-8", 0 ]
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
					"destination" : [ "obj-20", 6 ],
					"source" : [ "obj-93", 0 ]
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
 ],
		"parameters" : 		{
			"obj-63" : [ "vst~[2]", "vst~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
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
				"name" : "3.4.0h 5647.579.maxsnap",
				"bootpath" : "D:/Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "bach.roll.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "o.collect.mxe64",
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
				"name" : "bach.portal.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.iter.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.sort.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.reg.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.pick.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.expr.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.args.mxe64",
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
				"name" : "bach.print.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.is.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.flat.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.eq.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.slice.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.mapelem.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.nth.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.keys.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.rev.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.length.mxe64",
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
				"name" : "bach.neq.mxe64",
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
, 			{
				"name" : "bach.gt.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "bach.playkeys.mxe64",
				"type" : "mx64"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "orjan style",
				"default" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
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

}
