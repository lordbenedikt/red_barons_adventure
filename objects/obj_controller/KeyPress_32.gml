/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 33064A55
/// @DnDArgument : "expr" "game_over"
if(game_over)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1E672584
	/// @DnDParent : 33064A55
	/// @DnDArgument : "room" "room_main_menu"
	/// @DnDSaveInfo : "room" "room_main_menu"
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
		/// @DnDArgument : "expr" "(help+1) % 3"
		/// @DnDArgument : "var" "help"
		help = (help+1) % 3;
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
	
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 70E53729
		/// @DnDParent : 332269B5
		room_goto_next();
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 1F218BA1
		/// @DnDApplyTo : {obj_controller}
		/// @DnDParent : 332269B5
		with(obj_controller) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 76493EAC
			/// @DnDParent : 1F218BA1
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "in_game"
			in_game = 1;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 3974122D
			/// @DnDParent : 1F218BA1
			/// @DnDArgument : "steps" "90"
			alarm_set(0, 90);
		
			/// @DnDAction : YoYo Games.Common.Set_Global
			/// @DnDVersion : 1
			/// @DnDHash : 5ECA9FAF
			/// @DnDParent : 1F218BA1
			/// @DnDArgument : "var" "destroyed_airplanes"
			global.destroyed_airplanes = 0;
		}
	}
}