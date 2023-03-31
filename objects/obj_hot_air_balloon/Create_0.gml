/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79EDF2C2
/// @DnDArgument : "expr" "random_range(2,10)"
/// @DnDArgument : "var" "distance"
distance = random_range(2,10);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0360E22F
/// @DnDArgument : "expr" "distance*10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "depth"
depth += distance*10;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4D5FC740
/// @DnDArgument : "xscale" "1 / distance"
/// @DnDArgument : "yscale" "1 / distance"
image_xscale = 1 / distance;
image_yscale = 1 / distance;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 31310D08
/// @DnDArgument : "var" "image_speed"
image_speed = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 45399245
/// @DnDArgument : "expr" "irandom_range(0,2)"
/// @DnDArgument : "var" "image_index"
image_index = irandom_range(0,2);