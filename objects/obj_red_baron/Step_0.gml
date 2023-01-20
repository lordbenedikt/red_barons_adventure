/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 42425512
/// @DnDArgument : "var" "bullet_cooldown"
/// @DnDArgument : "op" "2"
if(bullet_cooldown > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3E149364
	/// @DnDParent : 42425512
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "bullet_cooldown"
	bullet_cooldown += -1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5BB8539D
/// @DnDArgument : "var" "y_movement"
y_movement = 0;

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 2A35B458
/// @DnDArgument : "key" "vk_down"
var l2A35B458_0;
l2A35B458_0 = keyboard_check(vk_down);
if (l2A35B458_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 13446CC4
	/// @DnDParent : 2A35B458
	/// @DnDArgument : "key" "vk_up"
	/// @DnDArgument : "not" "1"
	var l13446CC4_0;
	l13446CC4_0 = keyboard_check(vk_up);
	if (!l13446CC4_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6423124B
		/// @DnDParent : 13446CC4
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "y_movement"
		y_movement = 10;
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 0C4CC2E4
/// @DnDArgument : "key" "vk_up"
var l0C4CC2E4_0;
l0C4CC2E4_0 = keyboard_check(vk_up);
if (l0C4CC2E4_0)
{
	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 217F2725
	/// @DnDParent : 0C4CC2E4
	/// @DnDArgument : "key" "vk_down"
	/// @DnDArgument : "not" "1"
	var l217F2725_0;
	l217F2725_0 = keyboard_check(vk_down);
	if (!l217F2725_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C328995
		/// @DnDParent : 217F2725
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "var" "y_movement"
		y_movement = -10;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 68991B0E
/// @DnDArgument : "var" "(y + y_movement)"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "global.y_limit - sprite_height / 2"
if((y + y_movement) <= global.y_limit - sprite_height / 2)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 201B98C2
	/// @DnDParent : 68991B0E
	/// @DnDArgument : "var" "(y + y_movement)"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "sprite_height /  2"
	if((y + y_movement) >= sprite_height /  2)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 762521FF
		/// @DnDParent : 201B98C2
		/// @DnDArgument : "x" "0"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "y_movement"
		/// @DnDArgument : "y_relative" "1"
		x += 0;
		y += y_movement;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 128615C2
/// @DnDArgument : "var" "y_movement"
/// @DnDArgument : "op" "2"
if(y_movement > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08954DCB
	/// @DnDParent : 128615C2
	/// @DnDArgument : "var" "tilt_angle"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "-10"
	if(tilt_angle > -10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48541F37
		/// @DnDParent : 08954DCB
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "tilt_angle"
		tilt_angle += -2;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38574B91
/// @DnDArgument : "var" "y_movement"
/// @DnDArgument : "op" "1"
if(y_movement < 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44860D23
	/// @DnDParent : 38574B91
	/// @DnDArgument : "var" "tilt_angle"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(tilt_angle < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F36B62F
		/// @DnDParent : 44860D23
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "tilt_angle"
		tilt_angle += 2;
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 216A843D
/// @DnDArgument : "var" "y_movement"
if(y_movement == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60B3FB9A
	/// @DnDParent : 216A843D
	/// @DnDArgument : "var" "tilt_angle"
	/// @DnDArgument : "op" "2"
	if(tilt_angle > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 21C6AD76
		/// @DnDParent : 60B3FB9A
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "tilt_angle"
		tilt_angle += -2;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 51438B2E
	/// @DnDParent : 216A843D
	/// @DnDArgument : "var" "tilt_angle"
	/// @DnDArgument : "op" "1"
	if(tilt_angle < 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3581E279
		/// @DnDParent : 51438B2E
		/// @DnDArgument : "expr" "2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "tilt_angle"
		tilt_angle += 2;
	}
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 5D66170E
/// @DnDArgument : "angle" "0 + tilt_angle"
image_angle = 0 + tilt_angle;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 7970C9B5
/// @DnDApplyTo : {obj_controller}
with(obj_controller) {
	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 7E8C68D7
	/// @DnDParent : 7970C9B5
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	if(__dnd_health <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1E665AE7
		/// @DnDApplyTo : other
		/// @DnDParent : 7E8C68D7
		with(other) instance_destroy();
	}
}