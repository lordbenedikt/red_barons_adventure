global.ShootingPatternArray = [
	new ShootingPattern(0, 60, 1),		// Single
	new ShootingPattern(20, 140, 4),	// FourShots
	new ShootingPattern(4, 120, 12),
];

enum ShootingPatterns {
	Single,
	FourShots,
	MachineGun,
}

function get_shooting_pattern(pattern) {
	return global.ShootingPatternArray[pattern];
}

function ShootingPattern(_interval_shoot, _interval_reload, _ammo) constructor {
	interval_shoot = _interval_shoot;
	interval_reload = _interval_reload;
	ammo = _ammo;
}

global.BulletTypeArray = [
	new BulletType(obj_enemy_bullet, 15, spr_tank_bullet, 1, 10),				// Tank
	new BulletType(obj_bullet_friendly, spr_bullet_red_baron, 20, 1, 33.4),		// Friendly
	new BulletType(obj_enemy_bullet, 15, spr_bullet_sharp, 0.5, 5),
];

enum BulletTypes {
	Tank,
	Friendly,
	MachineGun,
}

function get_bullet_type(bullet_type) {
	return global.BulletTypeArray[bullet_type];
}

function BulletType(_obj, _speed, _sprite, _scale=1, _damage=10) constructor {
	obj = _obj;
	speed = _speed;
	scale = _scale;
	sprite = _sprite;
	damage = _damage;
}

function shoot_bullet(_x, _y, _layer, _obj_index, _dir, _speed, 
	_inertia=new Vec2(0,0), _sound=undefined, _sound_gain=undefined, _scale=1) {
	if (_sound) {
		audio_play_sound(_sound,0,0,_sound_gain);
	}
	var bullet = instance_create_layer(_x,_y,_layer,_obj_index);
	bullet.inertia = _inertia;
	bullet.speed = _speed;
	bullet.direction = _dir;
	bullet.image_angle = _dir;
	bullet.image_xscale = _scale;
	bullet.image_yscale = _scale;
	return bullet;
}

function spawn_gun(parent_id, rel_x, rel_y, rel_depth, target_id) {
	var _x = rel_x;
	var _y = rel_y;
	var _depth = rel_depth;
	if (instance_exists(parent_id)) {
		_x += parent_id.x;
		_y += parent_id.y;
		_depth += parent_id.depth;
	}
	with instance_create_depth(_x,_y, _depth, obj_rotating_gun) {
		parent_id = parent_id;
		target_id = target_id;
		image_angle_offset = 180;
		rotation_speed = 1;
		instance_change(obj_rotating_gun, true);
		return id;
	}
}

function new_gun(_parent, _x, _y, _depth) {
	var _gun = instance_create_depth(_x, _y, _depth, obj_rotating_gun);
	_gun.parent_id = _parent;
	_gun.target_id = obj_red_baron;
	_gun.rel_x = _x;
	_gun.rel_y = _y;
	_gun.rel_depth = _depth;
	return _gun;
}

function new_tank_gun(_parent, _x, _y, _depth, _scale=1) {
	var _gun = new_gun(_parent, _x, _y, _depth);
	_gun.sprite_index = spr_enemy_tank_gun;
	_gun.image_angle_offset = 180;
	_gun.rel_scale = _scale;
	_gun.shooting_pattern = get_shooting_pattern(ShootingPatterns.Single);
	_gun.length = 20;
	return _gun;
}

function new_boss_tank_gun(_parent, _x, _y, _depth) {
	var _gun = new_gun(_parent, _x, _y, _depth);
	_gun.image_angle_offset = 180;
}

function RotatingGunBuilder(_parent, _x, _y, _spr) constructor {
	parent_id = _parent;
	image_angle_offset = 0;

	image_xscale = 1;
	image_yscale = 1;
	rel_x = _x;
	rel_y = _y;
	rel_depth = 1;

	min_angle = 0;
	max_angle = 360;
	angle_is_constrained = false;
	rotation_speed = infinity;
	rotation_offset = 0;
	target_id = undefined;

	is_aiming = true;
	is_attacking = true;
	next_shot = 0;
	ammo = 0;

	shooting_pattern = getShootingPattern(ShootingPatterns.FourShots);
	bullet_object = obj_enemy_bullet;
	bullet_speed = 15;
	gun_len = 150;

	shoot_sound = snd_tank_gunshot;
	
	static with_image = function(_image) {
		image_index = _image;
	}
	static with_target = function(_target) {
		target = _target;
		return self;
	}
	static with_rot_offset = function(_rot_offset) {
		rotation_offset = _rot_offset;
		return self;
	}
	static with_shooting_pattern = function(_shooting_pattern) {
		shooting_pattern = _shooting_pattern;
		return self;
	}
	static with_shoot_sound = function(_shoot_sound) {
		shoot_sound = _gun_sound;
		return self;
	}
	static with_delay = function(_delay) {
		next_shot = _delay;
		return self;
	}
	static with_gun_len = function(_gun_len) {
		gun_len = _gun_len;
		return self;
	}
	static with_bullet_speed = function(_bullet_speed) {
		bullet_speed = _bullet_speed;
		return self;
	}
	static with_bullet = function(_bullet_obj) {
		bullet_obj = _bullet_obj;
		return self;
	}
	static with_scale = function(_xscale, _yscale) {
		image_xscale = _xscale;
		image_yscale = _yscale;
		return self;
	}
	static with_angle_constraint = function(_min, _max) {
		min_angle = _min;
		max_angle = _max;
		return self;
	}
	static with_depth = function(_rel_depth) {
		rel_depth = _rel_depth;
		return self;
	}
	static build = function() {
		var _gun_x = rel_x + (instance_exists(parent_id) ? parent_id.x : 0);
		var _gun_y = rel_y + (instance_exists(parent_id) ? parent_id.y : 0);
		var _gun_depth = rel_depth + (instance_exists(parent_id) ? parent_id.depth : 0);
		var _gun = instance_create_depth(_gun_x, _gun_y, _gun_depth, obj_rotating_gun);
		_gun.parent_id = parent_id;
		_gun.image_angle_offset = image_angle_offset;

		_gun.rel_x = rel_x;
		_gun.rel_y = rel_y;
		_gun.rel_depth = rel_depth;

		_gun.min_angle = min_angle;
		_gun.max_angle = max_angle;
		_gun.angle_is_constrained = angle_is_constrained;
		_gun.rotation_speed = rotation_speed;
		_gun.rotation_offset = rotation_offset;
		_gun.target_id = target_id;

		_gun.is_aiming = is_aiming;
		_gun.is_attacking = is_attacking;
		_gun.next_shot = next_shot;
		_gun.ammo = ammo;

		_gun.shooting_pattern = shooting_pattern;
		_gun.bullet_object = bullet_object;
		_gun.bullet_speed = bullet_speed;
		_gun.gun_len = gun_len;
		_gun.min_angle = min_angle;
		_gun.max_angle = max_angle;

		_gun.shoot_sound = shoot_sound;
		_gun.image_index = spr_enemy_tank_gun;
		_gun.image_xscale = image_xscale;
		_gun.image_yscale = image_yscale;
	}
}

/*
function RotatingGun(_parent, _x, _y, _target, _spr, _rot_speed, 
		_rot_offset, _shooting_pattern, _next_shot, _gun_len,
		_bullet_speed, _bullet_obj, _add_x_speed, _gun_sound) constructor {
	
	update = function() {
		x = parent.x + rel_x;
		y = parent.y + rel_y;
		if (instance_exists(target)) {
			//aiming
			image_angle = point_direction(x, y, target.x, target.y);
			
			shooting();
		}
		// draw self
		draw_sprite_ext(sprite_index,0,x,y,1,1,image_angle,c_white,1);
	}
	
	shooting = function() {
		if (next_shot > 0) {
			next_shot -= 1;
		} else {
			if (cur_ammo>0) {
				cur_ammo -= 1;
				next_shot = shooting_pattern.interval_shoot;
				shoot();
			} else {
				cur_ammo = shooting_pattern.ammo;
				next_shot = shooting_pattern.interval_reload;
			}
		}
	}
	
	shoot = function() {
		var _x = x + lengthdir_x(gun_len,image_angle);
		var _y = y + lengthdir_y(gun_len,image_angle);
		var _bullet = shoot_bullet(_x, _y, "Instances", bullet_obj, image_angle, bullet_speed, gun_sound);
		_bullet.x_speed = add_x_speed;
	}
	
	parent = _parent;
	target = _target;
	rot_speed = _rot_speed;
	rot_offset = _rot_offset;
	next_shot = _next_shot;
	shooting_pattern = _shooting_pattern;
	gun_len = _gun_len;
	bullet_speed = _bullet_speed;
	bullet_obj = _bullet_obj;
	add_x_speed = _add_x_speed;
	cur_ammo = shooting_pattern.ammo;
	gun_sound = _gun_sound;
	
	rel_x = _x;
	rel_y = _y;
	
	sprite_index = _spr;
	update();
}*/