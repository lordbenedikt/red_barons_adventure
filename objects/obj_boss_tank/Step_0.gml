/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 4F25E5DA
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0BA4AD6E
	/// @DnDParent : 4F25E5DA
	/// @DnDArgument : "soundid" "snd_big_explosion_metal"
	/// @DnDSaveInfo : "soundid" "snd_big_explosion_metal"
	audio_play_sound(snd_big_explosion_metal, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36D047D6
	/// @DnDParent : 4F25E5DA
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.destroyed_airplanes"
	global.destroyed_airplanes += 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2375E86B
	/// @DnDParent : 4F25E5DA
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2FFCC696
/// @DnDArgument : "var" "is_entering"
/// @DnDArgument : "value" "1"
if(is_entering == 1)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 03BDF602
	/// @DnDParent : 2FFCC696
	/// @DnDArgument : "x" "- object_speed"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += - object_speed;
	y += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58E689FB
	/// @DnDParent : 2FFCC696
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "room_width/2"
	if(x < room_width/2)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 54E51C45
		/// @DnDParent : 58E689FB
		/// @DnDArgument : "var" "is_entering"
		is_entering = 0;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1C210F19
else
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 4E489CC2
	/// @DnDParent : 1C210F19
	/// @DnDArgument : "code" "/// @description boss movement AI$(13_10)$(13_10)x += vel_x;$(13_10)$(13_10)acc_x = 1 * perlin_noise(current_time/700)$(13_10)$(13_10)var max_speed_mag = object_speed * 2$(13_10)var max_speed = min((max_x - x) / 30, max_speed_mag) $(13_10)var min_speed = max((x - min_x) / 30, -max_speed_mag)$(13_10)vel_x += acc_x$(13_10)vel_x = max(-min_speed, min(max_speed,vel_x))$(13_10)"
	/// @description boss movement AI
	
	x += vel_x;
	
	acc_x = 1 * perlin_noise(current_time/700)
	
	var max_speed_mag = object_speed * 2
	var max_speed = min((max_x - x) / 30, max_speed_mag) 
	var min_speed = max((x - min_x) / 30, -max_speed_mag)
	vel_x += acc_x
	vel_x = max(-min_speed, min(max_speed,vel_x))

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 76EC7748
	/// @DnDParent : 1C210F19
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)$(13_10)if (instance_number(obj_drone)<3 && __dnd_health < 70) {$(13_10)	drone_countdown--;$(13_10)	if (drone_countdown <= 0) {$(13_10)		drone_countdown = drone_cooldown;$(13_10)		var drone = instance_create_layer(x,y-100,layer,obj_drone);$(13_10)		drone.parent_id = id;$(13_10)	}$(13_10)}"
	/// @description Execute Code
	
	
	if (instance_number(obj_drone)<3 && __dnd_health < 70) {
		drone_countdown--;
		if (drone_countdown <= 0) {
			drone_countdown = drone_cooldown;
			var drone = instance_create_layer(x,y-100,layer,obj_drone);
			drone.parent_id = id;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6AD1F73F
/// @DnDArgument : "var" "x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "-sprite_width / 2"
if(x < -sprite_width / 2)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 59B162AB
	/// @DnDParent : 6AD1F73F
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 1549E749
	/// @DnDApplyTo : {obj_controller}
	/// @DnDParent : 6AD1F73F
	with(obj_controller) {
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 3B4D9EE1
		/// @DnDParent : 1549E749
		/// @DnDArgument : "health" "-20"
		/// @DnDArgument : "health_relative" "1"
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real(-20);
	}
}