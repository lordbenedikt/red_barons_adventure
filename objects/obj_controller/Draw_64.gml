global.GUI.update_and_draw();

if(in_game == 1)
{
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	draw_healthbar(10, 10, 200, 50, __dnd_health, $FFFFFFFF, $FF0000FF & $FFFFFF, $FF3FFF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));

	draw_set_font(font_destroyed_airplanes);

	draw_text(250, 10, string("Destroyed Enemies: ") + string(global.destroyed_airplanes));

	var baron_exists = false;
	baron_exists = instance_exists(obj_red_baron);
	if(baron_exists)
	{
		var _x_offset = 20 + (global.UsingTouchScreen ? 268 : 0);
		for(i = 0; i < obj_red_baron.missiles_powerup; i += 1) {
			var _x = _x_offset + 30;
			var _y = room_height - (20 + 15 * i);
			if (i == 9 && obj_red_baron.missiles_powerup>18) {
				draw_set_valign(fa_bottom)
				draw_set_halign(fa_center)
				draw_set_font(font_ammunition);
				draw_text(_x, _y, "x" + string(obj_red_baron.missiles_powerup));
				draw_set_valign(fa_top)
				draw_set_halign(fa_left)
				break;
			}
			draw_sprite_ext(spr_missile, 0, _x, _y, 0.25, 0.25, 0, $FFFFFF & $ffffff, 1);
		}
	
		for(i = 0; i < obj_red_baron.bombs_powerup; i += 1) {
			var _x = _x_offset + 75;
			var _y = room_height - (26 + 30 * i);
			if (i == 3 && obj_red_baron.bombs_powerup>8) {
				draw_set_valign(fa_bottom)
				draw_set_halign(fa_center)
				draw_set_font(font_ammunition);
				draw_text(_x, _y, "x" + string(obj_red_baron.bombs_powerup));
				draw_set_valign(fa_top)
				draw_set_halign(fa_left)
				break;
			}
			draw_sprite_ext(spr_bomb, 0, _x, _y, 0.2, 0.2, -45, $FFFFFF & $ffffff, 1);
		}
	
		for(i = 0; i < obj_red_baron.laser_powerup; i += 2) {
			var _x = _x_offset + 100;
			var _y = room_height - (14 + 8.5 * i);
			if (i == 6 && obj_red_baron.laser_powerup>30) {
				draw_set_valign(fa_bottom)
				draw_set_halign(fa_center)
				draw_set_font(font_ammunition);
				draw_text(_x + 20, _y, "x" + string(obj_red_baron.laser_powerup));
				draw_set_valign(fa_top)
				draw_set_halign(fa_left)
				break;
			}
			draw_sprite_ext(spr_energy_bar_unit, 0, _x, _y, 0.6, 0.6, 0, $FFFFFF & $ffffff, 1);
		}
	}
}

fade_in_out();

// fade in/out
