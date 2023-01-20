/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 3F81AA35
/// @DnDArgument : "soundid" "snd_laser"
audio_stop_sound(snd_laser);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 2DBC6BD4
/// @DnDInput : 2
/// @DnDArgument : "function" "spawn_explosion_red"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
spawn_explosion_red(x, y);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 3EAC2E29
/// @DnDApplyTo : {obj_controller}
with(obj_controller) {
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 05F45ACA
	/// @DnDParent : 3EAC2E29
	/// @DnDArgument : "steps" "90"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, 90);
}