/// @description Animate

var mouse_above = collision_point(mouse_x,mouse_y,id,false,false);
var mouse_pressed = mouse_check_button_pressed(mb_left);
var mouse_released = mouse_check_button_released(mb_left);

if mouse_above {
	if (is_pushed) {
		image_index = 0
		if (mouse_released && global.GUI.is_enabled()) {
			exec_with_args(button_func_index,button_func_args);
		}
	}
	else image_index = 1;
} else {
	image_index = 0;
}

if (mouse_above && mouse_pressed) is_pushed = true;
if (mouse_released) is_pushed = false;