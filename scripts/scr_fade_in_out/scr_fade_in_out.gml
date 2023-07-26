// Skriptelemente fade in and fade out

global.fade_in_out = 0;
global.fade_in_out_progress = 0;
global.fade_in_duration = 60;
global.fade_out_duration = 60;
function fade_in_out() {
	global.fade_in_out_progress = clamp(global.fade_in_out_progress+global.fade_in_out,0,1);
	draw_set_color(c_black);
	draw_set_alpha(global.fade_in_out_progress);
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
}
function fade_in(time) {
	if time == 0 {
		global.fade_in_out = 0;
		global.fade_in_out_progress = 0;
	} else {
		global.fade_in_out = -1 / time;
	}
}
function fade_out(time) {
	if time == 0 {
		global.fade_in_out = 0;
		global.fade_in_out_progress = 1;
		audio_sound_gain(obj_controller.bg_music,0,0);
	} else {
		global.fade_in_out = 1 / time;
		audio_sound_gain(obj_controller.bg_music,0,time);
	}
}