/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 4CF4DA94
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
instance_create_layer(x + 0, y + 0, "Instances", obj_explosion);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 70A4C2B2
/// @DnDArgument : "xpos" "-180"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
instance_create_layer(x + -180, y + 0, "Instances", obj_explosion);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0D588A4A
/// @DnDArgument : "xpos" "180"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_explosion"
/// @DnDSaveInfo : "objectid" "obj_explosion"
instance_create_layer(x + 180, y + 0, "Instances", obj_explosion);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 46CA57B5
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)fade_out(global.fade_out_duration);$(13_10)spawn_explosion(x,y);$(13_10)if (laser_sound) {$(13_10)	audio_stop_sound(laser_sound);$(13_10)}$(13_10)level_done();"
/// @description Execute Code

fade_out(global.fade_out_duration);
spawn_explosion(x,y);
if (laser_sound) {
	audio_stop_sound(laser_sound);
}
level_done();

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 75BB3DA8
/// @DnDArgument : "expr" "random_range(0,1) < 0.005 * (global.destroyed_airplanes - global.prev_powerup_at)"
if(random_range(0,1) < 0.005 * (global.destroyed_airplanes - global.prev_powerup_at))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 217BAEFC
	/// @DnDParent : 75BB3DA8
	/// @DnDArgument : "expr" "global.destroyed_airplanes"
	/// @DnDArgument : "var" "global.prev_powerup_at"
	global.prev_powerup_at = global.destroyed_airplanes;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 225DE66B
	/// @DnDParent : 75BB3DA8
	/// @DnDArgument : "var" "_powerup_type"
	/// @DnDArgument : "value" "irandom(3)"
	var _powerup_type = irandom(3);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5E9FAB19
	/// @DnDParent : 75BB3DA8
	/// @DnDArgument : "expr" "_powerup_type == 0"
	if(_powerup_type == 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 2FCE1CE1
		/// @DnDParent : 5E9FAB19
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_missile_powerup"
		/// @DnDSaveInfo : "objectid" "obj_missile_powerup"
		instance_create_layer(x + 0, y + 0, "Instances", obj_missile_powerup);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 628523C8
	/// @DnDParent : 75BB3DA8
	/// @DnDArgument : "expr" "_powerup_type == 1"
	if(_powerup_type == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7250D35D
		/// @DnDParent : 628523C8
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_fire_bullets_powerup"
		/// @DnDSaveInfo : "objectid" "obj_fire_bullets_powerup"
		instance_create_layer(x + 0, y + 0, "Instances", obj_fire_bullets_powerup);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6E41ED54
	/// @DnDParent : 75BB3DA8
	/// @DnDArgument : "expr" "_powerup_type == 2"
	if(_powerup_type == 2)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0B0AA871
		/// @DnDParent : 6E41ED54
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_laser_powerup"
		/// @DnDSaveInfo : "objectid" "obj_laser_powerup"
		instance_create_layer(x + 0, y + 0, "Instances", obj_laser_powerup);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 13005CA1
	/// @DnDParent : 75BB3DA8
	/// @DnDArgument : "expr" "_powerup_type == 3"
	if(_powerup_type == 3)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 48A7DF14
		/// @DnDParent : 13005CA1
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_first_aid"
		/// @DnDSaveInfo : "objectid" "obj_first_aid"
		instance_create_layer(x + 0, y + 0, "Instances", obj_first_aid);
	}
}