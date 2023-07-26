/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 2DF2D1C8

__dnd_health = real(0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4A028A62
/// @DnDInput : 2
/// @DnDArgument : "script" "damage_player"
/// @DnDArgument : "arg" "20"
/// @DnDArgument : "arg_1" "0"
script_execute(damage_player, 20, 0);