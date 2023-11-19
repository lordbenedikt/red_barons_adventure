/// @description 

rain_speed = 4;
rain_amount = 3;

rain = function() {
	effect_create_above(ef_rain, room_width/2, 500, 1, c_white);
}

update = function() {
	repeat(rain_speed) {
		part_system_update(3);
	}
}

repeat(120) {
	repeat(rain_amount) { rain(); }
	part_system_update(3);
	update();
}