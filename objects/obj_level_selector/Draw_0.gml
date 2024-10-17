darken_on_hover();

draw_self();
draw_set_font(font_destroyed_airplanes);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x, y, global.start_from_level+1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
