/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 33064A55
/// @DnDArgument : "expr" "game_over"
if(game_over)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 1E672584
	/// @DnDParent : 33064A55
	/// @DnDArgument : "room" "room_main_menu"
	/// @DnDSaveInfo : "room" "room_main_menu"
	room_goto(room_main_menu);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 05269980
	/// @DnDParent : 33064A55
	/// @DnDArgument : "var" "game_over"
	game_over = 0;

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 3BF07D72
	/// @DnDParent : 33064A55
	/// @DnDArgument : "health" "100"
	
	__dnd_health = real(100);
}