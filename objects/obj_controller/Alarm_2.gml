/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C0C7108
/// @DnDArgument : "code" "/// @description Game Over$(13_10)"
/// @description Game Over

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 38560053
/// @DnDArgument : "room" "room_game_over"
/// @DnDSaveInfo : "room" "room_game_over"
room_goto(room_game_over);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 00CD2A4B
/// @DnDArgument : "soundid" "snd_propeller"
/// @DnDSaveInfo : "soundid" "snd_propeller"
audio_stop_sound(snd_propeller);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2CEA6C06
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "game_over"
game_over = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27D37152
/// @DnDArgument : "var" "in_game"
in_game = 0;