/// @description Next Room

if (room=room_main_menu) {
	start_game();
	room_goto(global.level_order[global.start_from_level]);
	global.spawn_boss = global.start_from_boss;
} else {
	next_level_or_restart();
}