global.formations = ds_map_create();
global.formations[? "V3"] = new_v_formation(3);
global.formations[? "V4"] = new_v_formation(4);
global.formations[? "V5"] = new_v_formation(5);
global.formations[? "V6"] = new_v_formation(6);
global.formations[? "V7"] = new_v_formation(7);
global.formations[? "V8"] = new_v_formation(8);
global.formations[? "V9"] = new_v_formation(9);

function Formation(_pos_arr=[], _time_arr=[]) constructor {
	y_arr = _pos_arr;
	time_arr =_time_arr;
	function add(pos, time) {
		array_push(y_arr,pos);
		array_push(time_arr,time);
	}
}

function new_v_formation(n) {
	var res = new Formation();
	var is_even = (n % 2 == 0);
	var cols = ceil(n / 2);
	var min_y = 0;
	var max_y = 1;
	var center_y = 0.5;
	if max_y < min_y {
		show_debug_message("error: bottom > top!");
		return;
	}
	var time_spacing = 1 / (cols-1);
	var y_spacing = n==1 ? 0 : (max_y-min_y) / (n-1);
	var y_offset = 0;
	if is_even {
		y_offset = y_spacing / 2;
	}
	
	var spawned_count = 0;
	var col = 0;
	while (spawned_count < n) {
		if !is_even && spawned_count==0 {
			array_push(res.y_arr, center_y);
			array_push(res.time_arr, col * time_spacing);
			spawned_count++;
		} else {
			// push pos and time
			for (var _sign = -1; _sign<=1; _sign+=2){
				array_push(res.y_arr, center_y + _sign * y_offset);
				array_push(res.time_arr, col * time_spacing);
				spawned_count++;
			}
		}
		y_offset += y_spacing;
		col += 1;
	}
	return res;
}

function spawn_formation(_formation, _enemy_obj, _enemy_speed, bottom, top, 
	vertical_padding, duration, _mirror=false){
	var min_y = top+vertical_padding;
	var h = (bottom-vertical_padding) - min_y;
	for (var i = 0; i<array_length(_formation.y_arr); i++) {
		var _y = min_y + _formation.y_arr[i] * h;
		var _time = (_mirror ? 1-_formation.time_arr[i] : _formation.time_arr[i]) * duration; 
		var _argv = [_enemy_obj,_y,_enemy_speed];
		exec_delayed(spawn_at_y_with_speed,	_argv, _time);
	}
}

function spawn_formation_centered(_formation, _enemy_obj, _duration, 
	vertical_padding, _mirror=false) {
	spawn_formation(_formation, _enemy_obj, 5, 
		global.y_limit, 0, vertical_padding, _duration, _mirror);
}