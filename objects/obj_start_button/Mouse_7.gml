if obj_controller.help==0 {
	obj_controller.alarm[1] = global.fade_out_duration;
	fade_out(global.fade_out_duration);
}