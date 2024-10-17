left = false;
right = false;
up = false;
down = false;

armour = 1;
damage_cooldown = 0;
light_is_on = true
mini_guns = [];

laser_is_active = 0;
bullet_cooldown = 0;
tilt_angle = 0;

red_baron_speed = 10;
x_movement = 0;
y_movement = 0;

missiles_powerup = 7;
laser_powerup = 10;
fire_bullets_powerup = 0;
bombs_powerup = 3;

var _portrait = new Portrait(spr_pilot, spr_empty, 26, 44, spr_empty);
setup_speaker(_portrait, snd_voice1, fnt_dialogue, "Red Baron");
