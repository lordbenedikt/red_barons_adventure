/// @description AI movement

event_inherited();

x += x_speed;
y += y_speed; //y_speed;

if !instance_exists(parent_id) exit;

var acc = (perlin_noise(random_number + current_time/700)+1)/2.5;
x_speed = clamp(x_speed + acc * sign(parent_id.x - x), -max_speed, max_speed);

var acc = (perlin_noise(random_number_2 + current_time/700)+1)/7.5;
y_speed = clamp(y_speed + acc * sign(default_height - y), -max_speed/3, max_speed/3);

/*var _speed = 10;
var dspeed_perfect_norm = (new Vec2(
		parent_id.x-x, 
		default_height-y
	)).normalized();
var rand = perlin_noise(random_number + current_time/700);
var random_v_norm = new Vec2(lengthdir_x(1, rand), lengthdir_y(1, rand));
var cur_dist = distance_to_point(parent_id.x, default_height);
var k = cur_dist > max_dist ? 0 : (max_dist-cur_dist) / max_dist;
x_speed += k * random_v_norm.x + (1-k) * (_speed * dspeed_perfect_norm.x - x_speed);
y_speed += k * random_v_norm.y + (1-k) * (_speed * dspeed_perfect_norm.y - y_speed);*/

/*if !is_undefined(parent_id) && instance_exists(parent_id) {
	var xx = movement_width * (perlin_noise(random_number + current_time/700));
	var yy = movement_height * (perlin_noise(random_number_2 + current_time/700));
}

x = parent_id.x + xx;
y = default_height + yy;*/