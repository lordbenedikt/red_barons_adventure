/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4582DD06
/// @DnDArgument : "expr" "room==room_grasslands"
if(room==room_grasslands)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3DB691EE
	/// @DnDParent : 4582DD06
	/// @DnDArgument : "expr" "irandom(50) == 0"
	if(irandom(50) == 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 52A447F2
		/// @DnDInput : 4
		/// @DnDParent : 3DB691EE
		/// @DnDArgument : "function" "spawn_on_right_limit_y_depth"
		/// @DnDArgument : "arg" "obj_hot_air_balloon"
		/// @DnDArgument : "arg_1" "0"
		/// @DnDArgument : "arg_2" "room_height*0.6"
		/// @DnDArgument : "arg_3" "layer_get_depth(layer_get_id("far_away"))"
		spawn_on_right_limit_y_depth(obj_hot_air_balloon, 0, room_height*0.6, layer_get_depth(layer_get_id("far_away")));
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 22344511
/// @DnDArgument : "expr" "room==room_sunset"
if(room==room_sunset)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 050B7A1B
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

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 14AB43FA
/// @DnDArgument : "code" "/// @description Spawn bird$(13_10)"
/// @description Spawn bird