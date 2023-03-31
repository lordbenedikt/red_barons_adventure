/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 57769263
/// @DnDApplyTo : {obj_controller}
with(obj_controller) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 24BE9880
	/// @DnDParent : 57769263
	/// @DnDArgument : "health" "-20"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-20);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 44CD8064
/// @DnDApplyTo : {obj_red_baron}
with(obj_red_baron) {
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 426C7755
	/// @DnDParent : 44CD8064
	/// @DnDArgument : "expr" "120"
	/// @DnDArgument : "var" "damage_cool_down"
	damage_cool_down = 120;
}