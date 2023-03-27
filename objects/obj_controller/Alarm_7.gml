/// @description Lightning enqueue

alarm[6] = random_range(60,270);
lightning_is_hitting = false;
if (lightning_sound) {
	audio_sound_gain(lightning_sound,0,2000);
}