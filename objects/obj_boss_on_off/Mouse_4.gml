if (global.start_from_boss) {
	global.start_from_boss = false;
} else {
	global.start_from_boss = global.highest_unlocked_boss[global.difficulty_level] >= global.start_from_level;
}