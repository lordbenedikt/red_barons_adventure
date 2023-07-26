/// @description Setup
show_debug_message("mod={0}", -10 % 3);
global.difficulty_level = 2;
global.prev_powerup_at = 0;
global.cooldown_time = 120;

music_on = true;
help = 0;
game_over = 0;
__dnd_health = 100;
in_game = 0;

target_destroyed_enemies = [75, 75, 75];

// Create Sunset Filter Surface
filter_surface = surface_create(room_width, room_height);

// Lightning
lightning_is_hitting = false;
lightning_intensity = 0;
lightning_sound = undefined;
lightning_sprites = [bg_lightning,bg_lightning_2];
lightning_light_sprites = [bg_lightning_light,bg_lightning_light_2];
lightning_index = irandom(array_length(lightning_sprites)-1);
alarm[6] = 0;

// PARTICLES
// setup particle system
global.part_system = part_system_create_layer("part_foreground", true);
global.part_system_background = part_system_create_layer("part_background", true);

// define BulletParticle
global.BulletParticle = part_type_create();
part_type_sprite(global.BulletParticle, spr_debris, 0, 0, 1)
part_type_gravity(global.BulletParticle, 0.05, 270)
part_type_size(global.BulletParticle, 0.15, 0.3, -0.005, 0);
part_type_color1(global.BulletParticle, c_dkgrey);
part_type_speed(global.BulletParticle, 4, 6, -0.1, 0);
part_type_direction(global.BulletParticle, 100, 259, 0, 0);
part_type_orientation(global.BulletParticle, 0, 359, 0,0,0);
part_type_life(global.BulletParticle, 20, 40);

global.ExplosionParticle = part_type_create();
part_type_sprite(global.ExplosionParticle, spr_debris, 0, 0, 1);
part_type_gravity(global.ExplosionParticle, 0.05, 270);
part_type_size(global.ExplosionParticle, 0.4, 0.6, -0.02, 0);
part_type_color1(global.ExplosionParticle, c_dkgrey);
part_type_speed(global.ExplosionParticle, 8, 10, -0.1, 0);
part_type_direction(global.ExplosionParticle, 0, 359, 0, 0);
part_type_orientation(global.ExplosionParticle, 0, 359, 0,0,0);
part_type_life(global.ExplosionParticle, 40, 80);

global.LaserParticle = part_type_create();
part_type_shape(global.LaserParticle, pt_shape_flare);
part_type_gravity(global.LaserParticle, 0.05, 270);
part_type_size(global.LaserParticle, 0.4, 0.6, -0.02, 0);
part_type_color3(global.LaserParticle, c_yellow, c_red, c_red);
part_type_speed(global.LaserParticle, 8, 10, -0.1, 0);
part_type_direction(global.LaserParticle, 100, 259, 0, 0);
part_type_blend(global.LaserParticle, true);
part_type_life(global.LaserParticle, 10, 20);

global.LaserBeam = part_type_create();
part_type_shape(global.LaserBeam, pt_shape_flare);
part_type_size(global.LaserBeam, 0.3, 0.35, 0, 0);
part_type_speed(global.LaserBeam, 0, 0, 0, 0)
part_type_color1(global.LaserBeam, c_red);
part_type_blend(global.LaserBeam, true);
part_type_life(global.LaserBeam, 1, 1);

global.LaserBeamBase = part_type_create();
part_type_shape(global.LaserBeamBase, pt_shape_flare);
part_type_size(global.LaserBeamBase, 0.3, 0.35, 0, 0);
part_type_speed(global.LaserBeamBase, 0, 0, 0, 0)
part_type_color1(global.LaserBeamBase, c_red);
part_type_alpha1(global.LaserBeamBase, 0.1);
part_type_blend(global.LaserBeamBase, false);
part_type_life(global.LaserBeamBase, 1, 1);

global.LaserBeamCore = part_type_create();
part_type_shape(global.LaserBeamCore, pt_shape_flare);
part_type_size(global.LaserBeamCore, 0.05, 0.08, -0.02, 0);
part_type_speed(global.LaserBeamCore, 0, 0, 0, 0)
part_type_color1(global.LaserBeamCore, c_white);
part_type_blend(global.LaserBeamCore, true);
part_type_life(global.LaserBeamCore, 1, 1);

global.FireParticle = part_type_create();
part_type_shape(global.FireParticle, pt_shape_cloud);
part_type_gravity(global.FireParticle, 0.05, 270);
part_type_size(global.FireParticle, 0.5, 0.8, -0.05, 0);
part_type_color3(global.FireParticle, c_red, c_orange, c_yellow);
part_type_speed(global.FireParticle, 1, 1, -0.1, 0);
part_type_direction(global.FireParticle, 0, 359, 0, 0);
part_type_alpha1(global.FireParticle, 0.5);
part_type_blend(global.FireParticle, true);
part_type_life(global.FireParticle, 10, 10);
