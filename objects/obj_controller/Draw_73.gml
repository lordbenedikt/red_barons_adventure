/// @description Hier Beschreibung einfügen

// Surfaces are volatile 
// Always check that they haven't been destroyed
if (room == room_main_level2) {
	if (surface_exists(filter_surface)) {
	    surface_set_target(filter_surface);
		draw_clear_alpha(c_black, 0.1);

		with(obj_filter_parent) {
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_black, 0.9);
		}

		with(obj_bullet_red_baron) {
			if on_fire {
				surface_reset_target();
				gpu_set_blendmode(bm_add);
				draw_sprite_ext(spr_light_circle, 0, x, y, 0.3, 0.3, 0, c_yellow, 0.3);
				surface_set_target(other.filter_surface);
				gpu_set_blendmode(bm_subtract);
				draw_sprite_ext(spr_light_circle, 0, x, y, 1, 1, 0, c_white, 0.8);
				gpu_set_blendmode(bm_normal);
			}
		}
		
		draw_light_laser(filter_surface);
	
	    surface_reset_target();
	} else {
	    filter_surface = surface_create(room_width, room_height);
	    surface_set_target(filter_surface);
	    draw_clear_alpha(c_black, 0);
	    surface_reset_target();
	}
}

if (room == room_main_level3) {
	if (surface_exists(filter_surface)) {
	    surface_set_target(filter_surface);
		draw_clear_alpha(c_black, 0.70);


		with(obj_bullet_red_baron) {
			if on_fire {
				surface_reset_target();
				gpu_set_blendmode(bm_add);
				draw_sprite_ext(spr_light_circle, 0, x, y, 0.3, 0.3, 0, c_yellow, 0.3);
				surface_set_target(other.filter_surface);
				gpu_set_blendmode(bm_subtract);
				draw_sprite_ext(spr_light_circle, 0, x, y, 1, 1, 0, c_white, 0.8);
				gpu_set_blendmode(bm_normal);
			}
		}
		
		with(obj_red_baron) {
			if (light_is_on) {
				gpu_set_blendmode(bm_subtract);
				draw_sprite_ext(spr_light_cone, 0, x+68, y-6, 1, 1, 0, c_white, 0.5);
				gpu_set_blendmode(bm_normal);
			}
		}
				
		draw_light_laser(filter_surface);

		gpu_set_blendmode(bm_subtract);
		
		var lightning_brightness = lightning_intensity * (((perlin_noise(current_time/100)+1.3)+0.05*(perlin_noise(current_time/20)+1))/2.1)
		draw_sprite_ext(lightning_light_sprites[lightning_index],0,0,0,1,1,0,c_white,lightning_brightness);
		
		gpu_set_blendmode(bm_normal);
	
	    surface_reset_target();
	}
}

if (room == room_main_level2 || room_main_level3) {
	if (!surface_exists(filter_surface)) {
	    filter_surface = surface_create(room_width, room_height);
	} else {
	    if (view_current == 0) {
	        draw_surface(filter_surface, 0, 0);
	    }
	}
}