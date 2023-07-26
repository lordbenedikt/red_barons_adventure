/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 33064A55
/// @DnDArgument : "expr" "game_over"
if(game_over)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 5777EC2A
	/// @DnDParent : 33064A55
	/// @DnDArgument : "code" "/// @description fade out and next level$(13_10)$(13_10)room_goto(room_main_menu);"
	/// @description fade out and next level
	
	room_goto(room_main_menu);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05269980
	/// @DnDParent : 33064A55
	/// @DnDArgument : "var" "game_over"
	game_over = 0;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 3BF07D72
	/// @DnDParent : 33064A55
	/// @DnDArgument : "health" "100"
	
	__dnd_health = real(100);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F5FA267
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_main_menu"
if(room == room_main_menu)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CA47347
	/// @DnDParent : 7F5FA267
	/// @DnDArgument : "var" "help"
	/// @DnDArgument : "not" "1"
	if(!(help == 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18FF614A
		/// @DnDParent : 1CA47347
		/// @DnDArgument : "expr" "(help+1) % 5"
		/// @DnDArgument : "var" "help"
		help = (help+1) % 5;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 332269B5
	/// @DnDParent : 7F5FA267
	else
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2013A95F
		/// @DnDParent : 332269B5
		/// @DnDArgument : "soundid" "snd_main_menu_click"
		/// @DnDSaveInfo : "soundid" "snd_main_menu_click"
		audio_play_sound(snd_main_menu_click, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 570964DA
		/// @DnDParent : 332269B5
		/// @DnDArgument : "spriteind" "spr_start_button"
		/// @DnDSaveInfo : "spriteind" "spr_start_button"
		sprite_index = spr_start_button;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 4B16B04B
		/// @DnDParent : 332269B5
		/// @DnDArgument : "steps" "global.fade_out_duration"
		/// @DnDArgument : "alarm" "1"
		alarm_set(1, global.fade_out_duration);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2F5AE93B
		/// @DnDParent : 332269B5
		/// @DnDArgument : "script" "fade_out"
		/// @DnDArgument : "arg" "global.fade_out_duration"
		script_execute(fade_out, global.fade_out_duration);
	}
}