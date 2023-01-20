/// @description Hier Beschreibung einfügen

// Surfaces are volatile 
// Always check that they haven't been destroyed
if (room == room_main_level2) {
	if (surface_exists(filter_surface)) {
	    surface_set_target(filter_surface);
		draw_clear_alpha(c_black, 0);

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

	    /*// The following three lines set the 'dark' overlay
	    draw_set_color(c_black);
	    draw_set_alpha(0.8);
	    draw_rectangle(0, 0, room_width, room_height, 0);

	    // Setting the blend mode to 'subtract' is what allows us to "cut holes" out of the overlay
	    draw_set_blend_mode(bm_subtract);
	    draw_set_color(c_white);
    
	    // Draw circles in the overlay with your different light sources
	    // Note that I add randomization to the position and radius to mimic a flicker effect
	    with (oLantern)
	        draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 30 + random_range(-1, 1), false);
            
	    with (oParticleLantern)
	        if (image_xscale > 0.25)
	            draw_circle(x + random_range(-1, 1), y + random_range(-1, 1), 2 + random_range(-1, 1), false);
    
	    // Reset all of your draw stuff
	    draw_set_blend_mode(bm_normal);
	    draw_set_alpha(1);
		*/
	
	    surface_reset_target();
	} else {
	    // Again, surfaces can be a pain
	    // Create a new one if there were issues
	    filter_surface = surface_create(room_width, room_height);
	    surface_set_target(filter_surface);
	    draw_clear_alpha(c_black, 0);
	    surface_reset_target();
	}
}