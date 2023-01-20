/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 493BCFA5
/// @DnDArgument : "expr" "undefined"
/// @DnDArgument : "var" "target_obj"
target_obj = undefined;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 10F950A5
/// @DnDArgument : "target" "missile_sound"
/// @DnDArgument : "soundid" "snd_missile_launch"
/// @DnDSaveInfo : "soundid" "snd_missile_launch"
missile_sound = audio_play_sound(snd_missile_launch, 0, 0, 1.0, undefined, 1.0);