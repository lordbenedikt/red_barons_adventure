global.GUI = new GuiStruct();

function GuiStruct() constructor {
	static slide_page_number = -1;
	static is_enabled = function() {
		return slide_page_number == -1;
	}
	static update_and_draw = function() {
		show_slides();
	}
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
