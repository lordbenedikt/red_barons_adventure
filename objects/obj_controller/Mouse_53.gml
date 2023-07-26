/// @description

if (help!=0) {
	help = (help+1) % 5;
}

if music_on {
	audio_sound_gain(bg_music,get_bg_music_default_gain(room),0);
} else {
	audio_sound_gain(bg_music,0,0);
}

// part_particles_create(global.part_system, mouse_x, mouse_y, global.LaserParticle, 10);