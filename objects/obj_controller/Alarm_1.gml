/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D381545
/// @DnDArgument : "code" "/// @description Next Room$(13_10)$(13_10)if room=room_main_menu {$(13_10)	start_game();$(13_10)}"
/// @description Next Room

if room=room_main_menu {
	start_game();
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 12CEC9FA
/// @DnDArgument : "script" "next_level_or_restart"
script_execute(next_level_or_restart);