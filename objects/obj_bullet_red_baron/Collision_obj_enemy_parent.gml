/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 19C57F6F
instance_destroy();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A08BC45
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)part_particles_create(global.part_system, x, y, global.BulletParticle, 10)"
/// @description Execute Code

part_particles_create(global.part_system, x, y, global.BulletParticle, 10)

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5ED9CCA1
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6C9A72AF
	/// @DnDApplyTo : other
	/// @DnDParent : 5ED9CCA1
	/// @DnDArgument : "var" "on_fire"
	/// @DnDArgument : "value" "1"
	with(other) var l6C9A72AF_0 = on_fire == 1;
	if(l6C9A72AF_0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 6EAD559C
		/// @DnDParent : 6C9A72AF
		/// @DnDArgument : "health" "-other.damage*damage_multiplier()*1.5/ armour"
		/// @DnDArgument : "health_relative" "1"
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-other.damage*damage_multiplier()*1.5/ armour);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2C5422B0
	/// @DnDParent : 5ED9CCA1
	else
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 516E781F
		/// @DnDParent : 2C5422B0
		/// @DnDArgument : "health" "-other.damage*damage_multiplier() / armour"
		/// @DnDArgument : "health_relative" "1"
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-other.damage*damage_multiplier() / armour);
	}
}