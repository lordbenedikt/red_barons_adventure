/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 16E0C2B2
/// @DnDArgument : "expr" "collision_line(-100, global.y_limit+50, room_width+100, global.y_limit+50, id, 1,0)"
if(collision_line(-100, global.y_limit+50, room_width+100, global.y_limit+50, id, 1,0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0BA4AD6E
	/// @DnDParent : 16E0C2B2
	/// @DnDArgument : "soundid" "snd_explosion_3"
	/// @DnDSaveInfo : "soundid" "snd_explosion_3"
	audio_play_sound(snd_explosion_3, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36D047D6
	/// @DnDParent : 16E0C2B2
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.destroyed_airplanes"
	global.destroyed_airplanes += 1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2375E86B
	/// @DnDParent : 16E0C2B2
	instance_destroy();
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 4F25E5DA
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 27E7E0D7
	/// @DnDParent : 4F25E5DA
	/// @DnDArgument : "expr" "90"
	/// @DnDArgument : "var" "direction"
	direction = 90;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3103E124
	/// @DnDParent : 4F25E5DA
	/// @DnDArgument : "expr" "-0.25"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "speed"
	speed += -0.25;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 783BC757
	/// @DnDParent : 4F25E5DA
	/// @DnDArgument : "expr" "max((130 - image_angle) / 100, 0.2)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += max((130 - image_angle) / 100, 0.2);
}

/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 03BDF602
/// @DnDArgument : "x" "- object_speed"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += - object_speed;
y += 0;

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