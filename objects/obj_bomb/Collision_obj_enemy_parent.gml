/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6E0AFA41
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0CB78565
/// @DnDArgument : "expr" "other.object_index ==obj_enemy_tank"
if(other.object_index ==obj_enemy_tank)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 17A45D11
	/// @DnDParent : 0CB78565
	/// @DnDArgument : "xpos" "other.x"
	/// @DnDArgument : "ypos" "635"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDSaveInfo : "objectid" "obj_explosion"
	instance_create_layer(other.x, 635, "Instances", obj_explosion);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 58B37D5C
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6CA8BFF1
	/// @DnDParent : 58B37D5C
	/// @DnDArgument : "xpos" "other.x"
	/// @DnDArgument : "ypos" "other.y"
	/// @DnDArgument : "objectid" "obj_explosion"
	/// @DnDSaveInfo : "objectid" "obj_explosion"
	instance_create_layer(other.x, other.y, "Instances", obj_explosion);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 21FDE07C
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 123247A4
	/// @DnDParent : 21FDE07C
	/// @DnDArgument : "health" "-200 / armour"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-200 / armour);
}