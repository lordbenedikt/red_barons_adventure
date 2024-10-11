function set_sprite_randomly(_obj_id, _sprite_array) {
	var _i = irandom(array_length(_sprite_array)-1);
	_obj_id.sprite_index = _sprite_array[_i];
}

function angle_is_between(_angle, _min, _max, _excl=false) {
	if ( abs(angle_difference(_min,_max)) >= 360 ) { return true; }
	var _angle360 = ((_angle % 360) + 360) % 360;
	var _min360 = ((_min % 360) + 360) % 360;
	var _max360 = _max + (_min360 - _min);
	if (_max360 >= 360) {
		return _angle360 < (_max360 % 360) || _angle > _min360;
	} else {
		return _excl ? is_between_exclusive(_angle360, _min360, _max360)
			: is_between(_angle360, _min360, _max360);
	}
}

function is_between(value, a, b) {
	var _a = a<=b ? a : b;
	var _b = a<=b ? b : a;
	return value >= _a && value <= _b;
}

function is_between_exclusive(value, a, b) {
	return value!=a && value!=b && is_between(value,a,b);
}

function set_if_non_existent(inst_id, varname, value) {
	if !variable_instance_exists(inst_id, varname) {
		variable_instance_set(inst_id, varname, value);
	}
}

function Vec2(_x, _y) constructor {
	x = _x;
	y = _y;
	function add(v) {
		return new Vec2(x + v.x, y + v.y);
	}
	function sub(v) {
		return new Vec2(x - v.x, y - v.y);
	}
	function mul(scalar) {
		return new Vec2(x * scalar, y * scalar);
	}
	function divide(scalar) {
		if (scalar==0) { return undefined; }
		return new Vec2(x / scalar, y / scalar);
	}
	function mag() {
		return sqrt(sqr(x) + sqr(y));
	}
	function normalized() {
		var _mag = mag();
		if (_mag==0) { return undefined; }
		return self.divide(_mag);
	}
}
