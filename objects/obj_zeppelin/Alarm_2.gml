/// @description Launch one missile

if (launch_rockets > 0) {
	alarm[2] = 40;
	launch_rockets -= 1;
	instance_create_layer(x,y,layer,obj_enemy_missile);
} else {
	alarm[1] = 300;
}
