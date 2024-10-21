event_inherited();

touch_id = -1;

radius = sprite_width / 2;

input = function (_touch_id, _mouse_x, _mouse_y)
{
	if(device_mouse_check_button_pressed(_touch_id, mb_left)) {	
		global.input_launch_missile = true;
		image_alpha = 0.5;
	}
}