global.input_shoot = false;
global.input_launch_missile = false;
global.input_shoot_laser = false;
global.input_drop_bomb = false;

function handle_input() {
	global.input_shoot = keyboard_check(ord("D"));
	global.input_launch_missile = keyboard_check_pressed(ord("A"));
	global.input_shoot_laser = keyboard_check_pressed(ord("S"));
	global.input_drop_bomb = keyboard_check_pressed(vk_space);
}
