/// @description

if (help!=0) {
	help = (help+1) % 5;
}

if music_on {
	audio_sound_gain(bg_music,get_bg_music_default_gain(room),0);
} else {
	audio_sound_gain(bg_music,0,0);
}

/*if (room==room_sunset) {
	//spawn_formation_centered(global.formations[? "V5"], obj_enemy, 60, 100, false);
	//exec_delayed(spawn_formation_centered, [global.formations[? "V3"], obj_enemy, 30, 200, true], 90);
	spawn_formation_centered(global.formations[? "V5"], obj_enemy, 30, 100, false);
	exec_delayed(spawn_formation_centered, [global.formations[? "V3"], obj_enemy, 15, 200, false], 80);
}*/

// part_particles_create(global.part_system, mouse_x, mouse_y, global.LaserParticle, 10);