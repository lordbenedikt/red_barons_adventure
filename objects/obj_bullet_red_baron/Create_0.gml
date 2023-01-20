/// @description Create

on_fire = false;

if obj_red_baron.fire_bullets_powerup {
	obj_red_baron.fire_bullets_powerup -= 1;
	on_fire = true;
}

if on_fire {
	fire_trail_emitter = part_emitter_create(global.part_system);
	part_emitter_stream(global.part_system, fire_trail_emitter, global.FireParticle, 3);
}