/// @description draw self and gun

gun_x = x - 7*image_xscale;
gun_y = y-190*image_yscale;

with(obj_red_baron) {
	other.gun_direction = point_direction(other.gun_x,other.gun_y,x,y);
}

draw_sprite_ext(spr_boss_tank_gun,0,gun_x,gun_y,image_xscale,image_yscale,gun_direction + 180,c_white,1);
draw_self()