/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3601E70A
/// @DnDArgument : "var" "missiles_powerup"
/// @DnDArgument : "op" "2"
if(missiles_powerup > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 312E0127
	/// @DnDParent : 3601E70A
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "missiles_powerup"
	missiles_powerup += -1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 74363D5C
	/// @DnDParent : 3601E70A
	/// @DnDArgument : "xpos" "80"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "missile_id"
	/// @DnDArgument : "objectid" "obj_missile"
	/// @DnDSaveInfo : "objectid" "obj_missile"
	missile_id = instance_create_layer(x + 80, y + 0, "Instances", obj_missile);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 1EB28CCC
	/// @DnDApplyTo : missile_id
	/// @DnDParent : 3601E70A
	with(missile_id) {
		/// @DnDAction : YoYo Games.Instances.Sprite_Scale
		/// @DnDVersion : 1
		/// @DnDHash : 604EA0DC
		/// @DnDParent : 1EB28CCC
		/// @DnDArgument : "xscale" "0.35"
		/// @DnDArgument : "yscale" "0.35"
		image_xscale = 0.35;
		image_yscale = 0.35;
	}
}