/// @description 
instance_destroy();

/// @description Execute Code

part_particles_create(global.part_system, x, y, global.BulletParticle, 10)

with(other) {
	if(other.on_fire == 1)
	{
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-other.damage*damage_multiplier()*1.5 / armour);
	}

	else
	{
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-other.damage*damage_multiplier() / armour);
	}
}