/// @description - Input Handling

if (keyboard_check_pressed(vk_up)) {
	up = true;
}
if (keyboard_check_pressed(vk_down)) {
	down = true;
}
if (keyboard_check_pressed(vk_left)) {
	left = true;
}
if (keyboard_check_pressed(vk_right)) {
	right = true;
}

if (keyboard_check_released(vk_up)) {
	up = false;
}
if (keyboard_check_released(vk_down)) {
	down = false;
}
if (keyboard_check_released(vk_left)) {
	left = false;
}
if (keyboard_check_released(vk_right)) {
	right = false;
}

x_movement = (left ? -1 : 0) + (right ? 1 : 0);
y_movement = (up ? -1 : 0) + (down ? 1 : 0);

if (abs(x_movement) + abs(y_movement) == 2) {
	x_movement /= sqrt(2);
	y_movement /= sqrt(2);
}

x_movement *= red_baron_speed;
y_movement *= red_baron_speed;
;