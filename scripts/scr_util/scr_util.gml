function angle_is_between(angle, min, max, excl=false) {
	if ( abs(angle_difference(min,max)) >= 360 ) { return true; }
	var _angle = ((angle % 360) + 360) % 360;
	var _min = ((min % 360) + 360) % 360;
	var _max = max + (_min - min);
	if (_max >= 360) {
		return _angle < (_max % 360) || angle > _min;
	} else {
		return excl ? is_between_exclusive(_angle, _min, _max)
			: is_between(_angle, _min, _max);
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
