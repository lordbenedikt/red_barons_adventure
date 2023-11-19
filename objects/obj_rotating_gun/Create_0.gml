/// @description Initialized

parent_id = undefined;
image_angle_offset = 0;
inertia = new Vec2(0,0);

rel_scale = undefined;
min_angle = 0;
max_angle = 360;
angle_is_constrained = false;
rotation_speed = infinity;
target_id = undefined;
apply_inertia = true;
no_aim_when_unreachable = false;
shoot_sound_gain = undefined;

is_aiming = true;
is_attacking = true;
next_shot = 0;
ammo = 0;

shooting_pattern = get_shooting_pattern(ShootingPatterns.FourShots);
bullet_type = get_bullet_type(BulletTypes.Tank);
length = 150;

shoot_sound = snd_tank_gunshot;

follow_parent = function() {
	if !instance_exists(parent_id) { 
		if !is_undefined(parent_id) { instance_destroy(); }
		return; 
	}
	var prev_pos = new Vec2(x, y);
	x = parent_id.x + rel_x;
	y = parent_id.y + rel_y;
	inertia = (new Vec2(x, y)).sub(prev_pos);
	depth = parent_id.depth + rel_depth;
	if (!is_undefined(rel_scale)) {
		var _scale = parent_id.image_xscale * rel_scale;
		image_xscale = _scale;
		image_yscale = _scale;
	}
}
follow_parent();

// define aiming function
aiming = function() {
	is_attacking = false;
	if (!instance_exists(target_id) || !is_aiming) { return; }
	with(target_id) {
		var target_dir = point_direction(other.x,other.y,x,y);
		// if target_dir is beyond angle constraint
		if (!angle_is_between(target_dir, other.min_angle, other.max_angle)) {
			if (other.no_aim_when_unreachable) continue;
			// set target_dir to closest angle inside constraint	
			var dist_to_min = abs(angle_difference(other.min_angle,target_dir));
			var dist_to_max = abs(angle_difference(other.max_angle,target_dir));
			if ( dist_to_min <= dist_to_max ) {
				target_dir = other.min_angle;
			} else {
				target_dir = other.max_angle;
			}
		} else {
			other.is_attacking = true;
		}

		var angle_diff = angle_difference(target_dir, other.image_angle);
		if (other.angle_is_constrained) {
			if angle_is_between(other.min_angle,other.image_angle,
				other.image_angle+angle_diff,true) {
				angle_diff = -sign(angle_diff)*360-abs(angle_diff);
			}
		}
		if (abs(angle_diff) <= other.rotation_speed) {
			other.image_angle = target_dir;
		} else {
			other.image_angle += sign(angle_diff) * other.rotation_speed;
		}
		break;
	}
}

shooting = function() {
	if (!is_attacking) { return; }
	
	if (next_shot > 0) {
		next_shot -= 1;
	} else {
		if (ammo>0) {
			ammo -= 1;
			next_shot = shooting_pattern.interval_shoot;
			shoot();
		} else {
			ammo = shooting_pattern.ammo;
			next_shot = shooting_pattern.interval_reload;
		}
	}
}

shoot = function() {
	var _x = x + lengthdir_x(length,image_angle);
	var _y = y + lengthdir_y(length,image_angle);
	var _bullet = shoot_bullet(_x, _y, "Instances", bullet_type.obj, image_angle, 
		bullet_type.speed, apply_inertia ? inertia : undefined, 
		shoot_sound, shoot_sound_gain, bullet_type.scale);
	if (!is_undefined(bullet_type.damage)) {
		_bullet.damage = bullet_type.damage;
	}
	if (!is_undefined(bullet_type.sprite)) {
		_bullet.sprite_index = bullet_type.sprite;
	}
	_bullet.image_xscale = bullet_type.scale;
	_bullet.image_yscale = bullet_type.scale;
}

custom_draw_self = function() {
	draw_sprite_ext(sprite_index,image_index,
		x,y,image_xscale,image_yscale,
		image_angle+image_angle_offset,
		image_blend,image_alpha);
}