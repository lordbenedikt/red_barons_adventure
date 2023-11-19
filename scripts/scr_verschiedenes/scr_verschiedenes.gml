function difficulty_multiplier() {
	if (global.level_done) {
		return 0;
	}
	var difficulty_multipliers = [0.4, 0.65, 1, 1.2, 1.4];
	return difficulty_multipliers[global.difficulty_level];
}

function damage_multiplier() {
	return cheat_is_active("superstrong") ? 10 : 1;
}

function draw_fit_room_size(sprite) {
	draw_sprite_ext(sprite,0,0,0,room_width/sprite_get_width(sprite), room_height/sprite_get_height(sprite),0,c_white,1);
}

function spawn_powerup_maybe(x,y) {
	if (random_range(0,1) < 0.01 * (global.destroyed_airplanes - global.prev_powerup_at)) {
		global.prev_powerup_at = global.destroyed_airplanes;
		spawn_random_powerup(x,y,
		[
			obj_bombs_powerup,
			obj_fire_bullets_powerup,
			obj_first_aid,
			obj_laser_powerup,
			obj_missile_powerup
		]);
	} else {
		if (irandom(10)==0 && room==room_grasslands && obj_controller.boss_spawned) {
			instance_create_layer(x,y,"Instances",obj_bombs_powerup);
		}
	}
}

function spawn_random_powerup(x,y,possible_powerups) {
	var len = array_length(possible_powerups);
	var i = irandom(len-1);
	instance_create_layer(x,y,"Instances",possible_powerups[i]);
}

function spawn_on_ground(obj_index, min_scale = 1, max_scale = 1) {
	var _isFront = false;
	if random(2)<0.4 {
		_isFront = true;
	}
	
	var _scale = 0.6 * random_range(min_scale, max_scale);
	
	if (_isFront==true){
		obj_id = instance_create_layer(0, 0, "plants_front", obj_index)
		obj_id.distance = 1;
		obj_id.image_xscale = _scale / obj_id.distance;
		obj_id.image_yscale = _scale / obj_id.distance;
		obj_id.x = room_width + obj_id.sprite_width / 2;
		obj_id.y = 680;
	} else {

		var _distance = random_range(15,30)
		var _tree_depth = layer_get_depth(layer_get_id("plants_back")) + _distance;
		obj_id = instance_create_depth(0, 0, _tree_depth, obj_index)
		obj_id.distance = _distance / 10;
		obj_id.image_xscale = _scale / obj_id.distance;
		obj_id.image_yscale = _scale / obj_id.distance;
		obj_id.x = room_width + obj_id.sprite_width / 2;
		obj_id.y = 635 + 30 / obj_id.distance;
	}
}

function spawn_boss_tank() {	
	var _distance = 10
	
	obj_id = instance_create_layer(0, 0, "Instances", obj_boss_tank)
	obj_id.distance = _distance / 10;
	obj_id.x = room_width + obj_id.sprite_width / 2;
	obj_id.y = 675;
}

function spawn_boss_ship() {	
	var _distance = 10
	
	obj_id = instance_create_layer(0, 0, "Instances", obj_boss_ship)
	obj_id.distance = _distance / 10;
	obj_id.x = room_width + obj_id.sprite_width / 2;
	obj_id.y = global.y_limit + 20;
}

function spawn_vehicle(obj_index, min_scale = 1, max_scale = 1) {
	var _scale = 0.6 * random_range(min_scale, max_scale);

	obj_id = instance_create_layer(0, 0, "Instances", obj_index)
	obj_id.distance = 1.5;
	obj_id.image_xscale = _scale / obj_id.distance;
	obj_id.image_yscale = _scale / obj_id.distance;
	obj_id.x = room_width + obj_id.sprite_width / 2;
	obj_id.y = 665;
}

function spawn_at_y_with_speed(enemy_type, _y, _speed) {
	show_debug_message("framecount: {0}", current_time);
	obj_id = instance_create_layer(0, 0, "Instances", enemy_type)
	obj_id.x = room_width + obj_id.sprite_width / 2;
	obj_id.y = _y;
	obj_id.object_speed = _speed;
}

function spawn_on_right(enemy_type) {
	obj_id = instance_create_layer(0, 0, "Instances", enemy_type)
	
	obj_id.x = room_width + obj_id.sprite_width / 2;
	obj_id.y = random_range(0 + obj_id.sprite_height / 2, room_height - obj_id.sprite_height / 2 );
	
}

function spawn_on_right_limit_y(enemy_type,y_min,y_max) {
	obj_id = instance_create_layer(0, 0, "Instances", enemy_type)

	obj_id.x = room_width + obj_id.sprite_width / 2;
	obj_id.y = random_range(y_min + obj_id.sprite_height / 2, y_max - obj_id.sprite_height / 2 );
	
}

function spawn_on_right_limit_y_depth(enemy_type,y_min,y_max, at_depth) {
	obj_id = instance_create_depth(0, 0, at_depth, enemy_type)

	obj_id.x = room_width + obj_id.sprite_width / 2;
	obj_id.y = random_range(y_min + obj_id.sprite_height / 2, y_max - obj_id.sprite_height / 2 );
	
}

function spawn_explosion(x, y) {
	effect_create_above(ef_explosion, x, y, 1, c_dkgray);
	part_type_color1(global.ExplosionParticle, $676bae); // darker color: $223364
	part_particles_create(global.part_system, x, y, global.ExplosionParticle, 10);
}

function spawn_explosion_red(x, y) {
	effect_create_above(ef_explosion, x, y, 1, c_dkgray);
	part_type_color1(global.ExplosionParticle, $0000FF);
	part_particles_create(global.part_system, x, y, global.ExplosionParticle, 10);
}

function set_sprite_randomly(obj_id, sprite_array) {
	var i = irandom(array_length(sprite_array)-1);
	obj_id.sprite_index = sprite_array[i];
}

function damage_player(_amount, _cooldown) {
	with (obj_red_baron) {
		if damage_cooldown > 0 { return; }
		damage_cooldown = _cooldown;
		with(obj_controller) {
			if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
			__dnd_health += real(-_amount * difficulty_multiplier() / other.armour);
		}
	}
}

function start_game() {
	audio_play_sound(snd_main_menu_click, 0, 0, 1.0, undefined, 1.0);

	with(obj_controller) {
		in_game = 1;
	
		alarm_set(0, 90);
	
		global.destroyed_airplanes = 0;
	}
}

function do_nothing() {}

function level_done() {
	if instance_exists(obj_red_baron) {
		fade_out(global.fade_out_duration);
		global.level_done = true;
		obj_controller.alarm[1] = global.fade_out_duration * 4;
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
