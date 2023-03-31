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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1D70149B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "is_entering"
is_entering = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17FFCCA5
/// @DnDArgument : "expr" "40"
/// @DnDArgument : "var" "armour"
armour = 40;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7D54AB2A
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "object_speed"
object_speed = 8;

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
/// @DnDArgument : "var" "vel_x"
vel_x = 0;