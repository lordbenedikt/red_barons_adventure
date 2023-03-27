/// @description Self and Reflection

	if(surface_exists(surface_mirror) == false) {
		surface_mirror = surface_create(surface_width, surface_height);
	}

	var pos_x = 0;
	var pos_y = y_offset;

	//surface_copy_part(
	//	surface_mirror, 0, 0,
	//	application_surface, x - pos_x, y - sprite_height - pos_y,
	//	surface_width, surface_height
	//);
	
	//surface_set_target(surface_mirror);
	//	draw_set_color(#800000);
	//	draw_set_alpha(0.3);
	//	draw_rectangle(0, 0, surface_width, surface_height, false);
	//surface_reset_target();
	
	surface_set_target(surface_mirror);
		//draw_set_color(#FFAAAA);
		//draw_set_color(#FFAAAA);
		
		// draw sunset bg-image
		var bg_image_x = -160;
		var bg_image_y = -96;
		var bg_image_scale = 0.8751236;
		var bg_image_height = 1080;
		draw_sprite_ext(spr_sunset_2,0,bg_image_x,(bg_image_height*0.8751236)+bg_image_y,bg_image_scale,-bg_image_scale,0,c_white,1);
		
		var ysquash = 1;
		draw_set_alpha(0.8);
		with(obj_reflect_parent) {
			//if (layer == layer_get_id("Instances")) {
				draw_sprite_ext(sprite_index,image_index,x-other.x,(global.y_limit-other.y) + (y-global.y_limit)*ysquash - 40,image_xscale,image_yscale,image_angle,c_black,1);
			//}
		}
	surface_reset_target();
	
	//gpu_set_blendmode(bm_add);
	//surface_copy_part(
	//	surface_mirror, 0, 0,
	//	application_surface, x - pos_x, y - sprite_height - pos_y,
	//	surface_width, surface_height
	//);
	//gpu_set_blendmode(bm_normal);

	draw_set_color(c_white);
	draw_set_alpha(1);

	draw_surface_ext(
		surface_mirror,
		x,
		y + (surface_height),
		1,
		-1,
		0,
		c_white,
		1);