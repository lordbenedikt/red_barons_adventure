/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C829260
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_main_level1"
if(room == room_main_level1)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 12933644
	/// @DnDInput : 3
	/// @DnDParent : 5C829260
	/// @DnDArgument : "function" "spawn_vehicle"
	/// @DnDArgument : "arg" "obj_enemy_tank"
	/// @DnDArgument : "arg_1" "1.5"
	/// @DnDArgument : "arg_2" "1.5"
	spawn_vehicle(obj_enemy_tank, 1.5, 1.5);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0090EC95
/// @DnDArgument : "steps" "random_range(250,500)"
/// @DnDArgument : "alarm" "5"
alarm_set(5, random_range(250,500));