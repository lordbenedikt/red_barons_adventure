global.GUI = new GuiStruct();
global.UsingTouchScreen = false;

function GuiStruct() constructor {
	static slide_page_number = -1;
	static is_enabled = function() {
		return slide_page_number == -1;
	}
	static update_and_draw = function() {
		show_slides();
	}
}

function darken_on_hover(blend_color=#E0E0E0) {
	if (collision_point(mouse_x,mouse_y,id,true,false))
		image_blend = blend_color;
	else
		image_blend = c_white;
}

function start_button_func() {
	obj_controller.alarm[1] = global.fade_out_duration;
	fade_out(global.fade_out_duration);
}

function show_slides(sprites=undefined) {
	static _sprites = [];
	
	if is_undefined(sprites) {
		if (global.GUI.slide_page_number == -1) return false;
		// continue to next page
		if keyboard_check_pressed(vk_space) || mouse_check_button_pressed(mb_left) {
			global.GUI.slide_page_number += 1;
			if global.GUI.slide_page_number==array_length(_sprites) {
				global.GUI.slide_page_number = -1;
				return false;
			}
		}
		// draw slide
		draw_fit_room_size(_sprites[global.GUI.slide_page_number]);
		return true;
	} else {
		_sprites = sprites;
		global.GUI.slide_page_number = 0;
	}
}
