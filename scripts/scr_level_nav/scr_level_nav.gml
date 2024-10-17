function start_game() {
	audio_play_sound(snd_main_menu_click, 0, 0, 1.0, undefined, 1.0);

	with(obj_controller) {
		in_game = 1;
	
		alarm_set(0, 90);
	
		global.destroyed_airplanes = 0;
	}
}

function next_level_or_restart() {
	if (room==room_game_over || room==room_victory || obj_controller.game_over) {
		game_restart();
	} else {
		room_goto_next();
		obj_controller.__dnd_health = 100;
	}
}

function level_done() {
	global.spawn_boss = false;
	if instance_exists(obj_red_baron) {
		fade_out(global.fade_out_duration);
		global.level_done = true;
		var _current_level = array_get_index(global.level_order, room);
		for (var i=0; i<=global.difficulty_level; i++) {
			global.highest_unlocked_level[i] 
				= max(global.highest_unlocked_level[i],
					_current_level+1);
		}
		obj_controller.alarm[1] = global.fade_out_duration * 4;
	}
}