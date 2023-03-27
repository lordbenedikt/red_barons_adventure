/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 56C4A861
/// @DnDArgument : "code" "/// @description Spawn enemy plane$(13_10)$(13_10)if (room == room_main_level2) {$(13_10)	frequency = 2;$(13_10)} else {$(13_10)	frequency = 1;$(13_10)}"
/// @description Spawn enemy plane

if (room == room_main_level2) {
	frequency = 2;
} else {
	frequency = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 71EF4A74
/// @DnDArgument : "var" "in_game"
/// @DnDArgument : "value" "1"
if(in_game == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 53C3924D
	/// @DnDParent : 71EF4A74
	/// @DnDArgument : "steps" "random_range(45,100) / frequency"
	alarm_set(0, random_range(45,100) / frequency);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5F9431AD
	/// @DnDInput : 3
	/// @DnDParent : 71EF4A74
	/// @DnDArgument : "function" "spawn_on_right_limit_y"
	/// @DnDArgument : "arg" "obj_enemy"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "global.y_limit"
	spawn_on_right_limit_y(obj_enemy, 0, global.y_limit);
}