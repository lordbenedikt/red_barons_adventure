darken_on_hover();

draw_set_valign(fa_middle)
draw_text(x+40, y, global.UsingTouchScreen ? "Touch Controls enabled" : "Touch Controls disabled");
draw_set_valign(fa_top)

var _color = multiply_colors(global.UsingTouchScreen ? c_green : c_red, image_blend);
draw_sprite_ext(sprite_index, image_index,x,y,image_xscale,image_yscale,image_angle,_color,1);