function draw_light_fire_bullet(){

}

function draw_light_laser(filter_surface) {
	with(obj_red_baron) {
		if (laser_is_active) {
			for (var i = 0; i<1; i++) {
				var intensity = i==1 ? 0.5 : 1;
				var blendmode = i==0 ? bm_subtract : bm_add;
				var col = i==0 ? c_white : c_white
				gpu_set_blendmode(blendmode);
			
				// var target_length = laser_end_x - laser_start_x + sprite_get_width(spr_light_circle);
				// var x_scale = target_length / sprite_get_width(spr_light_circle);
				draw_sprite_ext(spr_light_circle,0,laser_start_x,y,1.5,1.5,0,col,intensity * (perlin_noise(current_time/300)+1)/4);
				draw_sprite_ext(spr_light_circle,0,laser_end_x,y,2,2,0,col,intensity * (perlin_noise(current_time/300)+1)/4);
			
				var xx = laser_start_x;
				while(xx < laser_end_x) {
					draw_sprite_ext(spr_light_circle,0,xx,y,0.4,0.4,0,col,intensity * (perlin_noise(current_time/300)+1)/2);
					xx += 30;
				}
				// STRETCH CIRCLE LIGHT draw_sprite_ext(spr_light_circle,0,(laser_end_x + laser_start_x)/2,laser_start_y,x_scale,1,0,c_white,(perlin_noise(current_time/300)+1)/2);
			}
			gpu_set_blendmode(bm_normal);
		}
	}
}

function draw_boss_laser(filter_surface) {
	with(obj_red_baron) {
		if (laser_is_active) {
			var is_bright_level = (room == room_main_level1) ? 1 : 0;
			for (var i = 0; i<=(1+is_bright_level); i++) {
				var intensity = i==1 ? 5 : 1;
				var blendmode = i==0 ? bm_subtract : bm_add;
				var col = i==0 ? c_white : c_yellow
				gpu_set_blendmode(blendmode);
			
				// var target_length = laser_end_x - laser_start_x + sprite_get_width(spr_light_circle);
				// var x_scale = target_length / sprite_get_width(spr_light_circle);
				draw_sprite_ext(spr_light_circle,0,laser_start_x,y,1.5,1.5,0,col,intensity * (perlin_noise(current_time/300)+1)/4);
				draw_sprite_ext(spr_light_circle,0,laser_end_x,y,2,2,0,col,intensity * (perlin_noise(current_time/300)+1)/4);
			
				var xx = laser_start_x;
				while(xx < laser_end_x) {
					draw_sprite_ext(spr_light_circle,0,xx,y,0.4,0.4,0,col,intensity * (perlin_noise(current_time/300)+1)/2);
					xx += 30;
				}
				// STRETCH CIRCLE LIGHT draw_sprite_ext(spr_light_circle,0,(laser_end_x + laser_start_x)/2,laser_start_y,x_scale,1,0,c_white,(perlin_noise(current_time/300)+1)/2);
			}
			gpu_set_blendmode(bm_normal);
		}
	}
}