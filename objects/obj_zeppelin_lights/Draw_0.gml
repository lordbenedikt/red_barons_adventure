/// @description 

var first_intensity = min(0.8,sin(intensity_count)+1);
var second_intensity = first_intensity;//zeppelin_id.state==2 ? 1-first_intensity : first_intensity;
var headlights_intensity = sin(headlights_intensity_count)+1;

var headlights_x = zeppelin_id.x-145*zeppelin_id.image_xscale;
var headlights_y = zeppelin_id.y+112*zeppelin_id.image_yscale;
var lanterns_x = zeppelin_id.x-31*zeppelin_id.image_xscale;
var lanterns_y =  zeppelin_id.y+109*zeppelin_id.image_yscale;
var first_row_x = zeppelin_id.x-362*zeppelin_id.image_xscale;
var first_row_y = zeppelin_id.y-61*zeppelin_id.image_yscale;
var second_row_x = zeppelin_id.x-350*zeppelin_id.image_xscale;
var second_row_y = zeppelin_id.y-34*zeppelin_id.image_yscale;


// draw headlights and lantern
draw_sprite_ext(spr_zeppelin_headlights, 0, headlights_x, headlights_y,zeppelin_id.image_xscale,zeppelin_id.image_yscale,0,c_white,headlights_intensity);

// draw light for headlights and lantern
draw_light(spr_light_cone_zeppelin, 0, headlights_x, headlights_y, zeppelin_id.image_xscale, zeppelin_id.image_yscale, 0, c_white, headlights_intensity);

draw_sprite_ext(spr_lights_first, 0, first_row_x, first_row_y,zeppelin_id.image_xscale,zeppelin_id.image_yscale,0,color,first_intensity);
draw_sprite_ext(spr_lights_first_overlay, 0, first_row_x, first_row_y,zeppelin_id.image_xscale,zeppelin_id.image_yscale,0,color,first_intensity);
draw_light(spr_lights_first_overlay, 0, first_row_x, first_row_y,zeppelin_id.image_xscale,zeppelin_id.image_yscale,0,color,first_intensity);

draw_sprite_ext(spr_lights_second, 0, second_row_x, second_row_y,zeppelin_id.image_xscale,zeppelin_id.image_yscale,0,color,second_intensity);
draw_sprite_ext(spr_lights_second_overlay, 0, second_row_x, second_row_y,zeppelin_id.image_xscale,zeppelin_id.image_yscale,0,color,second_intensity);
draw_light(spr_lights_second_overlay, 0,second_row_x, second_row_y,zeppelin_id.image_xscale,zeppelin_id.image_yscale,0,color,second_intensity);
