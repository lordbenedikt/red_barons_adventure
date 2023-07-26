/// @description laser_on

alarm[2] = irandom_range(90,90);
laser_on = true;

// play boss laser sound
if (laser_sound) {
	audio_stop_sound(laser_sound);
}
laser_sound = audio_play_sound(snd_laser, 0, 1, 0);
audio_sound_gain(laser_sound, 1.5, 40);