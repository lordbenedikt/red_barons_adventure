/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 4E2B6462
audio_stop_all();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 54077374
/// @DnDArgument : "code" "if room==room_main_menu {$(13_10)	fade_out(0);$(13_10)}$(13_10)$(13_10)if (room == room_mountains) {$(13_10)	alarm[6] = -1;$(13_10)	alarm[7] = -1;$(13_10)}$(13_10)$(13_10)for (var i = 0; i<array_length(ambiente_sounds); i++) {$(13_10)	audio_sound_gain(ambiente_sounds[i],0,1000);$(13_10)}$(13_10)$(13_10)if (surface_exists(filter_surface)) {$(13_10)	    surface_set_target(filter_surface);$(13_10)		draw_clear_alpha(c_black, 0);$(13_10)		surface_reset_target();$(13_10)}"
if room==room_main_menu {
	fade_out(0);
}

if (room == room_mountains) {
	alarm[6] = -1;
	alarm[7] = -1;
}

for (var i = 0; i<array_length(ambiente_sounds); i++) {
	audio_sound_gain(ambiente_sounds[i],0,1000);
}

if (surface_exists(filter_surface)) {
	    surface_set_target(filter_surface);
		draw_clear_alpha(c_black, 0);
		surface_reset_target();
}