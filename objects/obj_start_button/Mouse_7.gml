/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 5A91440C
/// @DnDArgument : "spriteind" "spr_start_button"
/// @DnDSaveInfo : "spriteind" "spr_start_button"
sprite_index = spr_start_button;
image_index = 0;

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 3DA1DFF3
room_goto_next();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 041EDAE4
/// @DnDApplyTo : {obj_controller}
with(obj_controller) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 543D4398
	/// @DnDParent : 041EDAE4
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "in_game"
	in_game = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0E19C7D1
	/// @DnDParent : 041EDAE4
	/// @DnDArgument : "steps" "90"
	alarm_set(0, 90);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 4EF2AC1B
	/// @DnDParent : 041EDAE4
	/// @DnDArgument : "var" "destroyed_airplanes"
	global.destroyed_airplanes = 0;
}