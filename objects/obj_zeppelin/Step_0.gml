/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 180DD328
/// @DnDArgument : "var" "state"
if(state == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A4F72B4
	/// @DnDParent : 180DD328
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "normal_x_pos"
	if(!(x < normal_x_pos))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 5F95D0F2
		/// @DnDParent : 7A4F72B4
		/// @DnDArgument : "x" "-max(1, min(15,0.015 * (x - normal_x_pos)))"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += -max(1, min(15,0.015 * (x - normal_x_pos)));
		y += 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2C0F9F3E
	/// @DnDParent : 180DD328
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55BC71B6
		/// @DnDParent : 2C0F9F3E
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "state"
		state = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D80AC11
		/// @DnDParent : 2C0F9F3E
		/// @DnDArgument : "expr" "1.5*pi"
		/// @DnDArgument : "var" "float_x"
		float_x = 1.5*pi;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 38D6AD9E
		/// @DnDParent : 2C0F9F3E
		/// @DnDArgument : "steps" "irandom_range(0,1000)"
		/// @DnDArgument : "alarm" "3"
		alarm_set(3, irandom_range(0,1000));
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 78EBBF75
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "1"
if(state == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55C8487C
	/// @DnDParent : 78EBBF75
	/// @DnDArgument : "expr" "1 * sin(float_x)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "x"
	x += 1 * sin(float_x);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C77DBAC
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "2"
if(state == 2)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0ED8F7CD
	/// @DnDParent : 2C77DBAC
	/// @DnDArgument : "expr" "-0.2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "ram_acc"
	ram_acc += -0.2;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 7E2DC2F3
	/// @DnDParent : 2C77DBAC
	/// @DnDArgument : "x" "ram_acc"
	/// @DnDArgument : "x_relative" "1"
	x += ram_acc;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C5DC126
/// @DnDArgument : "expr" "float_y+0.01"
/// @DnDArgument : "var" "float_y"
float_y = float_y+0.01;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46703625
/// @DnDArgument : "expr" "float_x+0.02"
/// @DnDArgument : "var" "float_x"
float_x = float_x+0.02;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 493BFCE3
/// @DnDArgument : "expr" "start_y + 100 * sin(float_y)"
/// @DnDArgument : "var" "y"
y = start_y + 100 * sin(float_y);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 18307863
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3BA0F769
	/// @DnDParent : 18307863
	instance_destroy();
}