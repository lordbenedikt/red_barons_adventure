visible = room != room_main_menu && global.UsingTouchScreen;

if (touch_id != -1)
{
	if (device_mouse_check_button(touch_id, mb_left))
	{
		global.input_shoot = true;
		image_blend = c_gray;
	}
	else
	{
		global.input_shoot = false;
		image_blend = c_white;
		touch_id = -1;
	}
}