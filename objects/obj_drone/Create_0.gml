/// @description Initialize

event_inherited();

parent_id = undefined;
default_height = room_height * 4/8;
max_dist = 1000;
max_speed = 15;
movement_width = 500;
movement_height = 200;
x += 100*perlin_noise(irandom(100));
y += 100*perlin_noise(irandom(100));
x_speed = 0;
y_speed = 0;
random_number = irandom(1000);
random_number_2 = irandom(1000);
image_xscale = 0.3;
image_yscale = 0.3;

for (var i =0; i<2; i++) {
	var _x = 0;
	var _y = i==0 ? -10 : 10;
	var _gun = new_tank_gun(id,_x,_y,1,0.1);
	_gun.min_angle = i==0 ? 15 : 195;
	_gun.max_angle = i==0 ? 165 : 345;
	_gun.image_angle = i==0 ? 90 : 270;
	_gun.target_id = obj_bomb;
	_gun.next_shot = 0;
	_gun.rotation_speed = infinity;
	_gun.shooting_pattern = new ShootingPattern(0,10,1);
	_gun.bullet_type = get_bullet_type(BulletTypes.Tank);
	_gun.bullet_type.scale = 0.5;
	_gun.bullet_type.damage = 10;
	_gun.bullet_type.speed = 20;
	_gun.sprite_index = spr_drone_gun;
	_gun.apply_inertia = false;
	_gun.no_aim_when_unreachable = true;
	_gun.shoot_sound_gain = 0.15;
	_gun.length = 40;
	_gun.image_xscale = 0.4;
	_gun.image_yscale = 0.4;
}
