/// @description draw self and gun

var _gun_x = x-53*image_xscale;
var _gun_y = y-140*image_yscale;

gun_direction = 0;
with(obj_red_baron) {
	other.gun_direction = point_direction(_gun_x,_gun_y,x,y);
}

if (alarm[0]<2) {
	var _x = _gun_x + lengthdir_x(20,gun_direction) * image_xscale;
	var _y = _gun_y + lengthdir_y(20,gun_direction) * image_yscale;
	var _bullet = instance_create_layer(_x,_y,layer,obj_enemy_bullet);
	_bullet.speed = 5;
	_bullet.direction= gun_direction;
	_bullet.x_speed = -object_speed;
	_bullet.image_angle = gun_direction;
}

draw_sprite_ext(spr_enemy_tank_gun,0,_gun_x,_gun_y,image_xscale,image_yscale,gun_direction + 180,c_white,1);
draw_self()