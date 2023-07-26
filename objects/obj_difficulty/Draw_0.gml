/// @description

cell_x = 72;
cell_y = 64;

var max_difficulty = 5;
var hover_difficulty = -1;

for (i = 0; i<max_difficulty; i++) {
	var _x = x + i*cell_x;
	if (point_in_rectangle(mouse_x, mouse_y, _x, y, _x+cell_x, y+cell_y)) {
		hover_difficulty = i;
	}
}
for (i = 0; i<max_difficulty; i++) {
	var _x = x + i*cell_x;
	if hover_difficulty>=i {
		draw_sprite(spr_star_glow, 0, _x, y);
	}
	draw_sprite(spr_star, i<=global.difficulty_level ? 0 : 1, _x, y);
}
if hover_difficulty>=0 && mouse_check_button_pressed(mb_left) {
	global.difficulty_level = hover_difficulty;
}
