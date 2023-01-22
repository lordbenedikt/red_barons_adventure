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
	/// @DnDArgument : "value" "room_height"
	/// @DnDArgument : "var" "y_limit"
	global.y_limit = room_height;
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