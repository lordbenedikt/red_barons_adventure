/// @description Initialize

surface_mirror = -1;

surface_width = abs(bbox_left - bbox_right);
surface_height = abs(bbox_top - bbox_bottom);
//show_debug_message("{}", surface_width);
//show_debug_message("{}", surface_height);

//surface_resize(application_surface, 1366,768);