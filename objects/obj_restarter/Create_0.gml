/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 6929D318
/// @DnDArgument : "soundid" "snd_propeller"
/// @DnDSaveInfo : "soundid" "snd_propeller"
audio_stop_sound(snd_propeller);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 35387445
/// @DnDArgument : "soundid" "snd_victory"
audio_play_sound(snd_victory, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 707C1679
/// @DnDArgument : "steps" "300"
alarm_set(0, 300);