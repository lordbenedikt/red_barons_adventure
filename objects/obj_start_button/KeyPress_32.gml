/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 1FAF3F3D
/// @DnDArgument : "spriteind" "spr_start_button"
/// @DnDSaveInfo : "spriteind" "spr_start_button"
sprite_index = spr_start_button;
image_index = 0;

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 74A248CB
room_goto_next();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 083434E5
/// @DnDApplyTo : {obj_controller}
with(obj_controller) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01D4B5FA
	/// @DnDParent : 083434E5
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "in_game"
	in_game = 1;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 0228DF7F
	/// @DnDParent : 083434E5
	/// @DnDArgument : "steps" "90"
	alarm_set(0, 90);

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 746BFA4F
	/// @DnDParent : 083434E5
	/// @DnDArgument : "var" "destroyed_airplanes"
	global.destroyed_airplanes = 0;
}