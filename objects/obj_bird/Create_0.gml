/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79EDF2C2
/// @DnDArgument : "expr" "random_range(1,3)"
/// @DnDArgument : "var" "distance"
distance = random_range(1,3);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F2094CA
/// @DnDArgument : "expr" "distance"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "depth"
depth += distance;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 4D5FC740
/// @DnDArgument : "xscale" "0.4 / distance"
/// @DnDArgument : "yscale" "0.4 / distance"
image_xscale = 0.4 / distance;
image_yscale = 0.4 / distance;