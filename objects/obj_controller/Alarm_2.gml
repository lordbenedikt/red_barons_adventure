/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C0C7108
/// @DnDArgument : "code" "/// @description Game Over$(13_10)$(13_10)fade_out(global.fade_out_duration);$(13_10)exec_delayed(room_goto,[room_game_over],global.fade_out_duration);$(13_10)//audio_stop(snd_propeller);$(13_10)game_over = true;$(13_10)in_game = 0;"
/// @description Game Over

fade_out(global.fade_out_duration);
exec_delayed(room_goto,[room_game_over],global.fade_out_duration);
//audio_stop(snd_propeller);
game_over = true;
in_game = 0;