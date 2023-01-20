function spawn_tree() {
	var _isFront = false;
	if random(2)<0.4 {
		_isFront = true;
	}
	
	var _scale = 0.6;
	
	if (_isFront==true){
		obj_id = instance_create_layer(0, 0, "plants_front", obj_tree)
		obj_id.distance = 1;
		obj_id.image_xscale = _scale / obj_id.distance;
		obj_id.image_yscale = _scale / obj_id.distance;
		obj_id.x = room_width + obj_id.sprite_width / 2;
		obj_id.y = 675;
	} else {

		var _distance = random_range(15,30)
		var _tree_depth = layer_get_depth(layer_get_id("plants_back")) + _distance;
		obj_id = instance_create_depth(0, 0, _tree_depth, obj_tree)
		obj_id.distance = _distance / 10;
		obj_id.image_xscale = _scale / obj_id.distance;
		obj_id.image_yscale = _scale / obj_id.distance;
		obj_id.x = room_width + obj_id.sprite_width / 2;
		obj_id.y = 635 + 30 / obj_id.distance;
	}
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

return;