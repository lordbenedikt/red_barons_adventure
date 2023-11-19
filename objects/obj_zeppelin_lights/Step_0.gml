/// @description 

var white_light_off_steps = 15;
var red_light_on_steps = 15;


if (zeppelin_id.alarm[3] == white_light_off_steps+red_light_on_steps) {
	intensity_speed = pi/2/white_light_off_steps;
	headlights_intensity_speed = pi/2/(white_light_off_steps+red_light_on_steps);
}
if (zeppelin_id.alarm[3] == red_light_on_steps) {
	headlights_out = true;
	intensity_speed = pi/red_light_on_steps;
	color = c_red;
} 
if (zeppelin_id.alarm[3] == 0) {
	intensity_speed = 0.5;
	headlights_intensity_speed = 0;
}
if (zeppelin_id.alarm[4] == 0) {
	headlights_intensity_count = pi;
	intensity_speed = 0.0;
	intensity_count = pi;
	color = c_white;
}

headlights_intensity_count += headlights_intensity_speed;
intensity_count += intensity_speed;
