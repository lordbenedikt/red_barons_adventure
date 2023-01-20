/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4582DD06
/// @DnDArgument : "expr" "room==room_main_level1"
if(room==room_main_level1)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6283EFFA
	/// @DnDInput : 3
	/// @DnDParent : 4582DD06
	/// @DnDArgument : "function" "spawn_on_right_limit_y"
	/// @DnDArgument : "arg" "obj_bird"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "room_height*0.7"
	spawn_on_right_limit_y(obj_bird, 0, room_height*0.7);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 22344511
/// @DnDArgument : "expr" "room==room_main_level2"
if(room==room_main_level2)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 52A447F2
	/// @DnDInput : 3
	/// @DnDParent : 22344511
	/// @DnDArgument : "function" "spawn_on_right_limit_y"
	/// @DnDArgument : "arg" "obj_bird"
	/// @DnDArgument : "arg_1" "0"
	/// @DnDArgument : "arg_2" "room_height*0.6"
	spawn_on_right_limit_y(obj_bird, 0, room_height*0.6);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7CC62734
/// @DnDArgument : "steps" "60"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 60);