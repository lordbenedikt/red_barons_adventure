/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2428394E
event_inherited();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 66E8A167
/// @DnDArgument : "steps" "300"
/// @DnDArgument : "alarm" "1"
alarm_set(1, 300);

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 7AD41A8B
/// @DnDArgument : "xscale" "0.85"
/// @DnDArgument : "yscale" "0.85"
image_xscale = 0.85;
image_yscale = 0.85;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3224F0B9
/// @DnDArgument : "expr" "100*difficulty_multiplier()"
/// @DnDArgument : "var" "armour"
armour = 100*difficulty_multiplier();

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 4B6447EC
/// @DnDArgument : "health" "100"

__dnd_health = real(100);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 294F3C15
/// @DnDArgument : "expr" "x"
/// @DnDArgument : "var" "spawn_x_pos"
spawn_x_pos = x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 74F215A9
/// @DnDArgument : "expr" "room_width - sprite_width / 2 "
/// @DnDArgument : "var" "normal_x_pos"
normal_x_pos = room_width - sprite_width / 2 ;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 072720B6
/// @DnDArgument : "var" "state"
state = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0EAF88A7
/// @DnDArgument : "expr" "y"
/// @DnDArgument : "var" "start_y"
start_y = y;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0DDF7918
/// @DnDArgument : "var" "float_x"
float_x = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 733B41B2
/// @DnDArgument : "expr" "pi/2"
/// @DnDArgument : "var" "float_y"
float_y = pi/2;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 1D47E313
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "lights"
/// @DnDArgument : "objectid" "obj_zeppelin_lights"
/// @DnDSaveInfo : "objectid" "obj_zeppelin_lights"
lights = instance_create_layer(x + 0, y + 0, "Instances", obj_zeppelin_lights);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 02AA7E08
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "lights.depth"
lights.depth += -1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 220360CC
/// @DnDArgument : "expr" "id"
/// @DnDArgument : "var" "lights.zeppelin_id"
lights.zeppelin_id = id;