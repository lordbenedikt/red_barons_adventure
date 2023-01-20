x += 20;

if on_fire {
	part_emitter_region(global.part_system, fire_trail_emitter,x,x,y,y,pt_shape_sphere,ps_distr_linear);
}