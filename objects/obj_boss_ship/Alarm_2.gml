/// @description laser_off

alarm[1] = irandom_range(100,100);
laser_on = false;
if (laser_sound) {
	audio_sound_gain(laser_sound, 0, 40);
}