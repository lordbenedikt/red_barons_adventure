/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 30EDB1E3
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 34ED9EA6
/// @DnDApplyTo : {obj_controller}
with(obj_controller) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 1114C79B
	/// @DnDParent : 34ED9EA6
	/// @DnDArgument : "health" "-10"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-10);
}