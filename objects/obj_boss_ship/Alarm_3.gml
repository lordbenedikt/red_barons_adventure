/// @description change_dir

if (!is_entering) {
	x_dir = -x_dir;
	alarm[3] = irandom_range(300,400);
} else {
	alarm[3] = 1;
}
