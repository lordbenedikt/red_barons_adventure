/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0D381545
/// @DnDArgument : "code" "/// @description Next Room$(13_10)$(13_10)if room=room_main_menu {$(13_10)	start_game();$(13_10)}"
/// @description Next Room

if room=room_main_menu {
	start_game();
}

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 5A255E32
room_goto_next();