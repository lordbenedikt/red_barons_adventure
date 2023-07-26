if(help == 1)
{
	draw_fit_room_size(spr_important_menu);
}

if(help == 2)
{
	draw_fit_room_size(spr_controls);
}

if(help == 3)
{
	draw_fit_room_size(spr_powerups_menu);
}

if(help == 4)
{
	draw_fit_room_size(spr_objectives);
}

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
		for(i = 0; i < obj_red_baron.missiles_powerup; i += 1) {
			draw_sprite_ext(spr_missile, 0, 30, room_height - (20 + 15 * i), 0.25, 0.25, 0, $FFFFFF & $ffffff, 1);
		}
	
		for(i = 0; i < obj_red_baron.bombs_powerup; i += 1) {
			draw_sprite_ext(spr_bomb, 0, 75, room_height - (26 + 30 * i), 0.2, 0.2, -45, $FFFFFF & $ffffff, 1);
		}
	
		for(i = 0; i < obj_red_baron.laser_powerup; i += 2) {
			draw_sprite_ext(spr_energy_bar_unit, 0, 100, room_height - (14 + 8.5 * i), 0.6, 0.6, 0, $FFFFFF & $ffffff, 1);
		}
	}
}

fade_in_out();

// fade in/out
