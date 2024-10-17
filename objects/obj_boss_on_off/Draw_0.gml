darken_on_hover();

var _color = multiply_colors(global.start_from_boss ? c_red : c_white, image_blend);
draw_sprite_ext(sprite_index, image_index,x,y,image_xscale,image_yscale,image_angle,_color,1);