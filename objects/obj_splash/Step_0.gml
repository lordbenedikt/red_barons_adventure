/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 0E80CBC9
/// @DnDArgument : "x" "-6"
/// @DnDArgument : "x_relative" "1"
x += -6;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F338DB6
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "value" "image_number-1"
if(image_index == image_number-1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2F433C9A
	/// @DnDParent : 7F338DB6
	instance_destroy();
}