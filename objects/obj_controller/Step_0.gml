/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6350475E
/// @DnDArgument : "code" "/// @description$(13_10)$(13_10)if (lightning_is_hitting) {$(13_10)	lightning_intensity = min(max(0,lightning_intensity+0.1),1);$(13_10)} else {$(13_10)	lightning_intensity = max(0,lightning_intensity-0.03);$(13_10)}"
/// @description

if (lightning_is_hitting) {
	lightning_intensity = min(max(0,lightning_intensity+0.1),1);
} else {
	lightning_intensity = max(0,lightning_intensity-0.03);
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0217F115
/// @DnDArgument : "expr" "room!=room_main_level3 && room!=room_main_level1"
if(room!=room_main_level3 && room!=room_main_level1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6009CE4E
	/// @DnDParent : 0217F115
	/// @DnDArgument : "var" "global.destroyed_airplanes"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "75"
	if(global.destroyed_airplanes >= 75)
	{
		/// @DnDAction : YoYo Games.Rooms.Next_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0E286194
		/// @DnDParent : 6009CE4E
		room_goto_next();
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0BDC93ED
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_main_level3"
if(room == room_main_level3)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0907175F
	/// @DnDParent : 0BDC93ED
	/// @DnDArgument : "var" "global.destroyed_airplanes"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "10"
	if(global.destroyed_airplanes >= 10)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F268D88
		/// @DnDParent : 0907175F
		/// @DnDArgument : "var" "zeppelin_spawned"
		if(zeppelin_spawned == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 18505E92
			/// @DnDParent : 1F268D88
			/// @DnDArgument : "xpos" "room_width + 500"
			/// @DnDArgument : "ypos" "room_height / 2"
			/// @DnDArgument : "objectid" "obj_zeppelin"
			/// @DnDSaveInfo : "objectid" "obj_zeppelin"
			instance_create_layer(room_width + 500, room_height / 2, "Instances", obj_zeppelin);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23B69EE6
			/// @DnDParent : 1F268D88
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "zeppelin_spawned"
			zeppelin_spawned = 1;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2E54DE33
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "room_main_level1"
if(room == room_main_level1)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 732E85B8
	/// @DnDParent : 2E54DE33
	/// @DnDArgument : "var" "global.destroyed_airplanes"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "75"
	if(global.destroyed_airplanes >= 75)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 23E6CD69
		/// @DnDParent : 732E85B8
		/// @DnDArgument : "var" "boss_spawned"
		if(boss_spawned == 0)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 4891DC97
			/// @DnDParent : 23E6CD69
			/// @DnDArgument : "function" "spawn_boss_tank"
			spawn_boss_tank();
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 217823CC
			/// @DnDParent : 23E6CD69
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "boss_spawned"
			boss_spawned = 1;
		}
	}
}