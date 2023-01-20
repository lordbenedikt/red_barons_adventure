/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0F2278BA
/// @DnDArgument : "speed" "10"
speed = 10;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7A27A30E
/// @DnDArgument : "expr" "target_obj == undefined || !instance_exists(target_obj)"
if(target_obj == undefined || !instance_exists(target_obj))
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 255CCA3F
	/// @DnDParent : 7A27A30E
	/// @DnDArgument : "code" "/// Find closest french aircraft$(13_10)$(13_10)target_obj = undefined;$(13_10)var _smallest_distance = 10000;$(13_10)$(13_10)with(obj_enemy) {$(13_10)	_dist = point_distance(other.x,other.y,x,y);$(13_10)	if _dist < _smallest_distance {$(13_10)		_smallest_distance = _dist;$(13_10)		other.target_obj = id;$(13_10)	}$(13_10)}"
	/// Find closest french aircraft
	
	target_obj = undefined;
	var _smallest_distance = 10000;
	
	with(obj_enemy) {
		_dist = point_distance(other.x,other.y,x,y);
		if _dist < _smallest_distance {
			_smallest_distance = _dist;
			other.target_obj = id;
		}
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E9D0FF5
/// @DnDArgument : "var" "target_obj"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "undefined"
if(!(target_obj == undefined))
{
	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 6542349E
	/// @DnDParent : 3E9D0FF5
	/// @DnDArgument : "obj" "target_obj"
	var l6542349E_0 = false;
	l6542349E_0 = instance_exists(target_obj);
	if(l6542349E_0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 3C878EDA
		/// @DnDParent : 6542349E
		/// @DnDArgument : "code" "var _dir = point_direction(x, y, target_obj.x, target_obj.y);$(13_10)var _diff_dir = direction - _dir;$(13_10)$(13_10)if abs(_diff_dir) > 180 {$(13_10)	var _diff_dir = -360 * sign(_diff_dir) + _diff_dir; $(13_10)}$(13_10)$(13_10)var _factor = min(6, abs(_diff_dir))$(13_10)direction -= _factor * sign(_diff_dir);"
		var _dir = point_direction(x, y, target_obj.x, target_obj.y);
		var _diff_dir = direction - _dir;
		
		if abs(_diff_dir) > 180 {
			var _diff_dir = -360 * sign(_diff_dir) + _diff_dir; 
		}
		
		var _factor = min(6, abs(_diff_dir))
		direction -= _factor * sign(_diff_dir);
	}
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 28E828B8
/// @DnDArgument : "angle" "direction"
image_angle = direction;