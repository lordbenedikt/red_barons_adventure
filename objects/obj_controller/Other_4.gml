/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49B3DB0B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)// var _filter_large_blur = fx_create("_filter_large_blur");$(13_10)// layer_set_fx("water", _fx_underwater);$(13_10)// fx_set_single_layer(_fx_underwater, true);$(13_10)$(13_10)var _fx_underwater = fx_create("_filter_underwater");$(13_10)// blue fx_set_parameter(_fx_underwater,"g_TintCol", [0.7,0.7,1]);$(13_10)fx_set_parameter(_fx_underwater,"g_TintCol", [1,1,1]);$(13_10)fx_set_parameter(_fx_underwater,"g_GlintCol", [0,0,0]);$(13_10)fx_set_parameter(_fx_underwater,"g_Distort1Amount", 25);$(13_10)//fx_set_parameter(_fx_underwater,"g_Distort2Amount", 2);$(13_10)fx_set_parameter(_fx_underwater,"g_Distort1Speed",0.1)$(13_10)//fx_set_parameter(_fx_underwater,"g_Distort2Speed",0.04)$(13_10)fx_set_parameter(_fx_underwater,"g_ChromaSpreadAmount",0); $(13_10)fx_set_single_layer(_fx_underwater, true);$(13_10)$(13_10)//g_Distort1Speed (Real)$(13_10)//g_Distort2Speed (Real)$(13_10)//g_Distort1Scale (Real)$(13_10)//g_Distort2Scale (Real)$(13_10)//g_Distort1Amount (Real)$(13_10)//g_Distort2Amount (Real)$(13_10)$(13_10)layer_set_fx("water", _fx_underwater);$(13_10)$(13_10)boss_spawned = 0;$(13_10)ambiente_sounds = [];$(13_10)$(13_10)global.destroyed_airplanes = 0$(13_10)global.prev_powerup_at = 0$(13_10)$(13_10)if (room == room_main_level3) {$(13_10)	alarm[6] = 100;$(13_10)	$(13_10)	// storm ambiente$(13_10)	var snd = audio_play_sound(snd_windy_storm,0,1,0);$(13_10)	array_push(ambiente_sounds,snd);$(13_10)	audio_sound_gain(snd,1,1000);$(13_10)	$(13_10)	// rain ambiente$(13_10)	var snd = audio_play_sound(snd_rain_loop,0,1,0);$(13_10)	array_push(ambiente_sounds,snd);$(13_10)	audio_sound_gain(snd,1,1000);$(13_10)}"
/// @description Execute Code

// var _filter_large_blur = fx_create("_filter_large_blur");
// layer_set_fx("water", _fx_underwater);
// fx_set_single_layer(_fx_underwater, true);

var _fx_underwater = fx_create("_filter_underwater");
// blue fx_set_parameter(_fx_underwater,"g_TintCol", [0.7,0.7,1]);
fx_set_parameter(_fx_underwater,"g_TintCol", [1,1,1]);
fx_set_parameter(_fx_underwater,"g_GlintCol", [0,0,0]);
fx_set_parameter(_fx_underwater,"g_Distort1Amount", 25);
//fx_set_parameter(_fx_underwater,"g_Distort2Amount", 2);
fx_set_parameter(_fx_underwater,"g_Distort1Speed",0.1)
//fx_set_parameter(_fx_underwater,"g_Distort2Speed",0.04)
fx_set_parameter(_fx_underwater,"g_ChromaSpreadAmount",0); 
fx_set_single_layer(_fx_underwater, true);

//g_Distort1Speed (Real)
//g_Distort2Speed (Real)
//g_Distort1Scale (Real)
//g_Distort2Scale (Real)
//g_Distort1Amount (Real)
//g_Distort2Amount (Real)

layer_set_fx("water", _fx_underwater);

boss_spawned = 0;
ambiente_sounds = [];

global.destroyed_airplanes = 0
global.prev_powerup_at = 0

if (room == room_main_level3) {
	alarm[6] = 100;
	
	// storm ambiente
	var snd = audio_play_sound(snd_windy_storm,0,1,0);
	array_push(ambiente_sounds,snd);
	audio_sound_gain(snd,1,1000);
	
	// rain ambiente
	var snd = audio_play_sound(snd_rain_loop,0,1,0);
	array_push(ambiente_sounds,snd);
	audio_sound_gain(snd,1,1000);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 35BB1B03
/// @DnDArgument : "expr" "room==room_main_level1"
if(room==room_main_level1)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 50E12693
	/// @DnDParent : 35BB1B03
	/// @DnDArgument : "value" "room_height*0.85"
	/// @DnDArgument : "var" "y_limit"
	global.y_limit = room_height*0.85;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 06AFF911
/// @DnDArgument : "expr" "room==room_main_level2"
if(room==room_main_level2)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3A64D14F
	/// @DnDParent : 06AFF911
	/// @DnDArgument : "value" "room_height*0.75"
	/// @DnDArgument : "var" "y_limit"
	global.y_limit = room_height*0.75;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 55B27062
/// @DnDArgument : "expr" "room==room_main_level3"
if(room==room_main_level3)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 72AD8FF7
	/// @DnDParent : 55B27062
	/// @DnDArgument : "value" "room_height"
	/// @DnDArgument : "var" "y_limit"
	global.y_limit = room_height;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 74E7E87A
/// @DnDArgument : "var" "zeppelin_spawned"
zeppelin_spawned = 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1628B3D6
/// @DnDArgument : "expr" "room==room_game_over"
if(room==room_game_over)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 418229B4
	/// @DnDParent : 1628B3D6
	/// @DnDArgument : "soundid" "snd_music_defeat"
	/// @DnDSaveInfo : "soundid" "snd_music_defeat"
	audio_play_sound(snd_music_defeat, 0, 0, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Rooms.If_First_Room
/// @DnDVersion : 1
/// @DnDHash : 4A38B758
if(room == room_first)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 4DEFFF46
	/// @DnDParent : 4A38B758
	/// @DnDArgument : "soundid" "snd_red_baron_main_menu_music"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "snd_red_baron_main_menu_music"
	audio_play_sound(snd_red_baron_main_menu_music, 0, 1, 1.0, undefined, 1.0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1B9156FB
else
{
	/// @DnDAction : YoYo Games.Audio.Stop_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 5AB8FAD5
	/// @DnDParent : 1B9156FB
	/// @DnDArgument : "soundid" "snd_red_baron_main_menu_music"
	/// @DnDSaveInfo : "soundid" "snd_red_baron_main_menu_music"
	audio_stop_sound(snd_red_baron_main_menu_music);

	/// @DnDAction : YoYo Games.Rooms.If_Last_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0468947E
	/// @DnDParent : 1B9156FB
	/// @DnDArgument : "not" "1"
	if(room != room_last)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34E7911B
		/// @DnDParent : 0468947E
		/// @DnDArgument : "var" "room"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "room_victory"
		if(!(room == room_victory))
		{
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 64EE00AA
			/// @DnDParent : 34E7911B
			/// @DnDArgument : "soundid" "snd_propeller"
			/// @DnDArgument : "loop" "1"
			/// @DnDSaveInfo : "soundid" "snd_propeller"
			audio_play_sound(snd_propeller, 0, 1, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 22090367
			/// @DnDParent : 34E7911B
			/// @DnDArgument : "alarm" "3"
			alarm_set(3, 30);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 1B176402
			/// @DnDParent : 34E7911B
			/// @DnDArgument : "steps" "120"
			/// @DnDArgument : "alarm" "4"
			alarm_set(4, 120);
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 202B58A1
			/// @DnDParent : 34E7911B
			/// @DnDArgument : "steps" "500"
			/// @DnDArgument : "alarm" "5"
			alarm_set(5, 500);
		}
	}
}