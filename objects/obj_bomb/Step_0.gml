/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5D2D0009
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_grasslands"
if(room == room_grasslands)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 782B5B5C
	/// @DnDParent : 5D2D0009
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "room_height - 137"
	if(y >= room_height - 137)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4B3C27AC
		/// @DnDParent : 782B5B5C
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5698CEE4
		/// @DnDParent : 782B5B5C
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_explosion"
		/// @DnDSaveInfo : "objectid" "obj_explosion"
		instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 025467F3
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 111D4F31
	/// @DnDParent : 025467F3
	/// @DnDArgument : "var" "room"
	/// @DnDArgument : "value" "room_sunset"
	if(room == room_sunset)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D63A166
		/// @DnDParent : 111D4F31
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "global.y_limit"
		if(y >= global.y_limit)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 4973E8A4
			/// @DnDParent : 3D63A166
			instance_destroy();
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 163E113B
			/// @DnDParent : 3D63A166
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "global.y_limit"
			/// @DnDArgument : "objectid" "obj_splash"
			/// @DnDSaveInfo : "objectid" "obj_splash"
			instance_create_layer(x + 0, global.y_limit, "Instances", obj_splash);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 447FB69F
	/// @DnDParent : 025467F3
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 505E0A96
		/// @DnDParent : 447FB69F
		/// @DnDArgument : "var" "y"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "room_height + 100"
		if(y >= room_height + 100)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 295C55F2
			/// @DnDParent : 505E0A96
			instance_destroy();
		}
	}
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 1F287EE4
/// @DnDArgument : "y" "15"
/// @DnDArgument : "y_relative" "1"

y += 15;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4660B155
/// @DnDArgument : "code" "/// @description rotate downwards$(13_10)$(13_10)target_angle = -90;$(13_10)$(13_10)angle_diff = target_angle - image_angle;$(13_10)image_angle += angle_diff / 20;"
/// @description rotate downwards

target_angle = -90;

angle_diff = target_angle - image_angle;
image_angle += angle_diff / 20;