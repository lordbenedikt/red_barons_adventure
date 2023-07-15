/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D431511
/// @DnDArgument : "var" "obj_controller.help"
if(obj_controller.help == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 73D26BCF
	/// @DnDParent : 5D431511
	/// @DnDArgument : "soundid" "snd_main_menu_click"
	/// @DnDSaveInfo : "soundid" "snd_main_menu_click"
	audio_play_sound(snd_main_menu_click, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 08A31ACF
	/// @DnDParent : 5D431511
	/// @DnDArgument : "spriteind" "spr_help_button"
	/// @DnDSaveInfo : "spriteind" "spr_help_button"
	sprite_index = spr_help_button;
	image_index = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 765692B2
	/// @DnDParent : 5D431511
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "obj_controller.help"
	obj_controller.help = 1;
}