/// @description Hier 

frame_count += 1;

x = parent_id.x + fixture_x;
y = parent_id.y + fixture_y;

vel_x = xx - last_xx + acc_x;
vel_y = yy - last_yy + acc_y;

last_xx = xx - 0.05*(perlin_noise(x+frame_count)-0.5);
last_yy = yy;

xx += vel_x;
yy += vel_y;

// solve constraint
var _correction_amount = length - point_distance(x,y,xx,yy);
var _correction_dir = point_direction(x,y,xx,yy);
xx += lengthdir_x(_correction_amount, _correction_dir);
yy += lengthdir_y(_correction_amount, _correction_dir);

image_angle = point_direction(x,y,xx,yy)-270;
