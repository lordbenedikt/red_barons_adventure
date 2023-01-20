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
	/// @DnDArgument : "steps" "random_range(30,60)"
	alarm_set(0, random_range(30,60));

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21CAC400
	/// @DnDParent : 71EF4A74
	/// @DnDArgument : "var" "room == room_main_level1"
	/// @DnDArgument : "value" "1"
	if(room == room_main_level1 == 1)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 5F9431AD
		/// @DnDInput : 3
		/// @DnDParent : 21CAC400
		/// @DnDArgument : "function" "spawn_on_right_limit_y"
		/// @DnDArgument : "arg" "obj_enemy"
		/// @DnDArgument : "arg_1" "0"
		/// @DnDArgument : "arg_2" "room_height*0.7"
		spawn_on_right_limit_y(obj_enemy, 0, room_height*0.7);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 300069F9
	/// @DnDParent : 71EF4A74
	else
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1DE52ED3
		/// @DnDParent : 300069F9
		/// @DnDArgument : "function" "spawn_on_right"
		/// @DnDArgument : "arg" "obj_enemy"
		spawn_on_right(obj_enemy);
	}
}