/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 74754051
/// @DnDArgument : "var" "bombs_powerup"
/// @DnDArgument : "op" "2"
if(bombs_powerup > 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 540B93EE
	/// @DnDParent : 74754051
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_bomb"
	/// @DnDSaveInfo : "objectid" "obj_bomb"
	instance_create_layer(x + 0, y + 0, "Instances", obj_bomb);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3150EA93
	/// @DnDParent : 74754051
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "bombs_powerup"
	bombs_powerup += -1;
}