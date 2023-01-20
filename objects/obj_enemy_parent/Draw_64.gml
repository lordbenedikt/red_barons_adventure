/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 34600CF3
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health < 100)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0CF877E1
	/// @DnDParent : 34600CF3
	/// @DnDArgument : "expr" "sprite_width / 1.5"
	/// @DnDArgument : "var" "bar_width"
	bar_width = sprite_width / 1.5;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 32A82EDC
	/// @DnDParent : 34600CF3
	/// @DnDArgument : "expr" "sprite_height / 20"
	/// @DnDArgument : "var" "bar_height"
	bar_height = sprite_height / 20;

	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
	/// @DnDVersion : 1
	/// @DnDHash : 697B8811
	/// @DnDParent : 34600CF3
	/// @DnDArgument : "x1" "-bar_width / 2"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "-(sprite_height / 2 + bar_height)"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "bar_width / 2"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-sprite_height / 2"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF3FFF00"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	draw_healthbar(x + -bar_width / 2, y + -(sprite_height / 2 + bar_height), x + bar_width / 2, y + -sprite_height / 2, __dnd_health, $FFFFFFFF, $FF0000FF & $FFFFFF, $FF3FFF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));
}