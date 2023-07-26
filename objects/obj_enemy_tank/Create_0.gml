/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2E2831BA
event_inherited();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 003F94EA
alarm_set(0, 30);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 17FFCCA5
/// @DnDArgument : "expr" "1.5*difficulty_multiplier()"
/// @DnDArgument : "var" "armour"
armour = 1.5*difficulty_multiplier();

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
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
image_xscale = 0.5;
image_yscale = 0.5;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1127ADAD
/// @DnDArgument : "code" "/// @description spawn gun$(13_10)$(13_10)new_tank_gun(id,-55*image_xscale, -160*image_yscale, 1, 1);"
/// @description spawn gun

new_tank_gun(id,-55*image_xscale, -160*image_yscale, 1, 1);