/// @description


exec_scheduled_actions()

if (lightning_is_hitting) {
	lightning_intensity = min(max(0,lightning_intensity+0.1),1);
} else {
	lightning_intensity = max(0,lightning_intensity-0.03);
}

cheat()

if (global.spawn_boss and !boss_spawned) {
	for (var i=0; i<=global.difficulty_level; i++) {
		global.highest_unlocked_boss[i] 
			= max(array_get_index(global.level_order, room), 
				global.highest_unlocked_boss[i]);
	}
	switch(room)
	{
		case room_mountains:
			instance_create_layer(room_width*2, room_height / 2, "Instances", obj_zeppelin);
			break;

		case room_grasslands:
			spawn_boss_tank();
			break;

		case room_sunset:
			spawn_boss_ship();
			break;
	}
	boss_spawned = true;
} else {
	var _current_level = array_get_index(global.level_order, room);
	if (_current_level != -1 && global.destroyed_airplanes >= global.target_destroyed_enemies[_current_level]) {
		global.spawn_boss = true;
	}
}