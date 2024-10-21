visible = show_touch_controls();

if (touch_id != -1)
{
	if (device_mouse_check_button(touch_id, mb_left))
	{
		global.input_shoot_laser = true;
		image_blend = c_gray;
	}
	else
	{
		global.input_shoot_laser = false;
		image_blend = c_white;
		touch_id = -1;
	}
}