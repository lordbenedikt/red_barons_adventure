/// @description Hier Beschreibung einfügen

if (room == room_main_level2) {
	if (!surface_exists(filter_surface)) {
	    filter_surface = surface_create(room_width, room_height);
	} else {
	    if (view_current == 0) {
	        draw_surface(filter_surface, 0, 0);
	    }
	}
}