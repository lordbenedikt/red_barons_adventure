/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3126BC93
event_inherited();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1AFF2771
/// @DnDArgument : "steps" "180"
/// @DnDArgument : "alarm" "2"
alarm_set(2, 180);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E536C5A
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "baron_in_reach_machine_gun"
baron_in_reach_machine_gun = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21E18302
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "baron_in_reach_left_gun"
baron_in_reach_left_gun = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 10C866EB
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "x_dir"
x_dir = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 094E1A04
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "laser_damage"
laser_damage = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C8E8306
/// @DnDArgument : "var" "machine_gun_min_angle"
machine_gun_min_angle = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3C3A8322
/// @DnDArgument : "expr" "60"
/// @DnDArgument : "var" "machine_gun_max_angle"
machine_gun_max_angle = 60;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FB5FFD6
/// @DnDArgument : "expr" "120"
/// @DnDArgument : "var" "gun_min_angle"
gun_min_angle = 120;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4042722E
/// @DnDArgument : "expr" "230"
/// @DnDArgument : "var" "gun_max_angle"
gun_max_angle = 230;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65D6A780
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "laser_min_angle"
laser_min_angle = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6DC88D53
/// @DnDArgument : "expr" "170"
/// @DnDArgument : "var" "laser_max_angle"
laser_max_angle = 170;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D90F7EF
/// @DnDArgument : "expr" "laser_max_angle"
/// @DnDArgument : "var" "laser_gun_direction"
laser_gun_direction = laser_max_angle;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D1A972A
/// @DnDArgument : "var" "laser_on"
laser_on = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E3B096A
/// @DnDArgument : "var" "laser_shoot"
laser_shoot = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 081DEE7B
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "fast_firing"
fast_firing = 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0EA53AF8
/// @DnDArgument : "expr" "fast_firing"
/// @DnDArgument : "var" "bullets_left"
bullets_left = fast_firing;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 30C3FC18
/// @DnDArgument : "var" "gun_direction"
gun_direction = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 003F94EA
/// @DnDArgument : "steps" "180"
alarm_set(0, 180);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 05326976
/// @DnDArgument : "steps" "120"
/// @DnDArgument : "alarm" "3"
alarm_set(3, 120);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D70149B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "is_entering"
is_entering = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17FFCCA5
/// @DnDArgument : "expr" "40*difficulty_multiplier()"
/// @DnDArgument : "var" "armour"
armour = 40*difficulty_multiplier();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D54AB2A
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "max_speed_mag"
max_speed_mag = 4;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 507A7886
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 3932D245
/// @DnDArgument : "xscale" "0.8"
/// @DnDArgument : "yscale" "0.8"
image_xscale = 0.8;
image_yscale = 0.8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A7D1F0A
/// @DnDArgument : "expr" "sprite_width / 2 +10"
/// @DnDArgument : "var" "min_x"
min_x = sprite_width / 2 +10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 52ECC72D
/// @DnDArgument : "expr" "room_width - (sprite_width / 2 + 10)"
/// @DnDArgument : "var" "max_x"
max_x = room_width - (sprite_width / 2 + 10);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2538A89E
/// @DnDArgument : "var" "acc_x"
acc_x = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33D6C73F
/// @DnDArgument : "expr" "-max_speed_mag"
/// @DnDArgument : "var" "vel_x"
vel_x = -max_speed_mag;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2ECDCD74
/// @DnDArgument : "expr" "undefined"
/// @DnDArgument : "var" "laser_sound"
laser_sound = undefined;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1124C880
/// @DnDArgument : "code" "/// @description spawn machine_gun$(13_10)$(13_10)machinegun = new_gun(id, 148, -195, -1);$(13_10)machinegun.min_angle = -45;$(13_10)machinegun.max_angle = 80;$(13_10)machinegun.target_id = obj_red_baron;$(13_10)machinegun.shooting_pattern = get_shooting_pattern(ShootingPatterns.MachineGun);$(13_10)machinegun.shoot_sound = snd_gunshot;$(13_10)machinegun.shoot_sound_gain = 0.5;$(13_10)machinegun.image_angle_offset = -13;$(13_10)machinegun.next_shot = irandom(60);$(13_10)machinegun.rotation_speed = 2;$(13_10)machinegun.sprite_index = spr_machine_gun;$(13_10)machinegun.bullet_type = get_bullet_type(BulletTypes.MachineGun);$(13_10)machinegun.length = 70;$(13_10)machinegun.image_xscale = image_xscale;$(13_10)machinegun.image_yscale = image_xscale;$(13_10)"
/// @description spawn machine_gun

machinegun = new_gun(id, 148, -195, -1);
machinegun.min_angle = -45;
machinegun.max_angle = 80;
machinegun.target_id = obj_red_baron;
machinegun.shooting_pattern = get_shooting_pattern(ShootingPatterns.MachineGun);
machinegun.shoot_sound = snd_gunshot;
machinegun.shoot_sound_gain = 0.5;
machinegun.image_angle_offset = -13;
machinegun.next_shot = irandom(60);
machinegun.rotation_speed = 2;
machinegun.sprite_index = spr_machine_gun;
machinegun.bullet_type = get_bullet_type(BulletTypes.MachineGun);
machinegun.length = 70;
machinegun.image_xscale = image_xscale;
machinegun.image_yscale = image_xscale;