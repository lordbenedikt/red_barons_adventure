/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 383431D7
/// @DnDArgument : "expr" "room==room_main_level1"
if(room==room_main_level1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FA92BB5
	/// @DnDParent : 383431D7
	/// @DnDArgument : "var" "random(10)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(random(10) < 1)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 0F0EF9D1
		/// @DnDParent : 4FA92BB5
		/// @DnDArgument : "function" "spawn_tree"
		spawn_tree();
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 77ECCFDD
/// @DnDArgument : "steps" "random_range(5,10)"
/// @DnDArgument : "alarm" "4"
alarm_set(4, random_range(5,10));