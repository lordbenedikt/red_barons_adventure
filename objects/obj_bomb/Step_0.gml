/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 782B5B5C
/// @DnDArgument : "var" "y"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "630"
if(y >= 630)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4B3C27AC
	/// @DnDParent : 782B5B5C
	instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5698CEE4
	/// @DnDParent : 782B5B5C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDSaveInfo : "objectid" "obj_explosion"
	instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 1F287EE4
/// @DnDArgument : "y" "15"
/// @DnDArgument : "y_relative" "1"

y += 15;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4660B155
/// @DnDArgument : "code" "/// @description rotate downwards$(13_10)$(13_10)target_angle = -90;$(13_10)$(13_10)angle_diff = target_angle - image_angle;$(13_10)image_angle += angle_diff / 20;"
/// @description rotate downwards

target_angle = -90;

angle_diff = target_angle - image_angle;
image_angle += angle_diff / 20;