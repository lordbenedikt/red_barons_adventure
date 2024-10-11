/// @description 

show_debug_message("x:{0}, y:{1}, angle:{2}", x, y, image_angle);
draw_sprite_ext(sprite_index, image_index, x, y, parent_id.image_xscale, parent_id.image_yscale, image_angle, c_white, 1);

// draw light
draw_light(spr_zeppelin_lantern_light, 0, x, y, parent_id.image_xscale, parent_id.image_yscale, image_angle, c_white, 1);
