/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E3DAFCC
/// @DnDArgument : "var" "in_game"
/// @DnDArgument : "value" "1"
if(in_game == 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Health
	/// @DnDVersion : 1
	/// @DnDHash : 3E2B1D80
	/// @DnDParent : 2E3DAFCC
	/// @DnDArgument : "x1" "10"
	/// @DnDArgument : "y1" "10"
	/// @DnDArgument : "x2" "200"
	/// @DnDArgument : "y2" "50"
	/// @DnDArgument : "mincol" "$FF0000FF"
	/// @DnDArgument : "maxcol" "$FF3FFF00"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	draw_healthbar(10, 10, 200, 50, __dnd_health, $FFFFFFFF, $FF0000FF & $FFFFFF, $FF3FFF00 & $FFFFFF, 0, (($FFFFFFFF>>24) != 0), (($FFFFFFFF>>24) != 0));

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 4658D369
	/// @DnDParent : 2E3DAFCC
	/// @DnDArgument : "font" "font_destroyed_airplanes"
	/// @DnDSaveInfo : "font" "font_destroyed_airplanes"
	draw_set_font(font_destroyed_airplanes);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 2B124A90
	/// @DnDParent : 2E3DAFCC
	/// @DnDArgument : "x" "250"
	/// @DnDArgument : "y" "10"
	/// @DnDArgument : "caption" ""Destroyed Enemies: ""
	/// @DnDArgument : "var" "global.destroyed_airplanes"
	draw_text(250, 10, string("Destroyed Enemies: ") + string(global.destroyed_airplanes));

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 7CF6EE4A
	/// @DnDParent : 2E3DAFCC
	/// @DnDArgument : "obj" "obj_red_baron"
	/// @DnDSaveInfo : "obj" "obj_red_baron"
	var l7CF6EE4A_0 = false;
	l7CF6EE4A_0 = instance_exists(obj_red_baron);
	if(l7CF6EE4A_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5FEF2660
		/// @DnDParent : 7CF6EE4A
		/// @DnDArgument : "var" "obj_red_baron.missiles_powerup"
		/// @DnDArgument : "op" "2"
		if(obj_red_baron.missiles_powerup > 0)
		{
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 7954FA4A
			/// @DnDParent : 5FEF2660
			/// @DnDArgument : "cond" "i < obj_red_baron.missiles_powerup"
			for(i = 0; i < obj_red_baron.missiles_powerup; i += 1) {
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 577B83D5
				/// @DnDParent : 7954FA4A
				/// @DnDArgument : "x" "30"
				/// @DnDArgument : "y" "room_height - (20 + 15 * i)"
				/// @DnDArgument : "xscale" "0.25"
				/// @DnDArgument : "yscale" "0.25"
				/// @DnDArgument : "sprite" "spr_missile"
				/// @DnDSaveInfo : "sprite" "spr_missile"
				draw_sprite_ext(spr_missile, 0, 30, room_height - (20 + 15 * i), 0.25, 0.25, 0, $FFFFFF & $ffffff, 1);
			}
		}
	}
}