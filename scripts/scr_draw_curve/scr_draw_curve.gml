// Skriptelemente wurden für v2.3.0 geändert, weitere Informationen sind unter
// https://help.yoyogames.com/hc/en-us/articles/360005277377 verfügbar

function draw_curve(x1, y1, x2, y2, start_angle, detail){
	var dist, dist_ang, inc, draw_x, draw_y;
 
    dist = point_distance(x1,y1,x2,y2);
    dist_ang = angle_difference(point_direction(x1,y1,x2,y2),start_angle);
    inc = (1/detail);
 
    draw_primitive_begin(pr_linestrip);
    for (i=0; i<1+inc; i+=inc) {
        draw_x = x1 + (lengthdir_x(i * dist, i * dist_ang + start_angle));
        draw_y = y1 + (lengthdir_y(i * dist, i * dist_ang + start_angle));
        draw_vertex(draw_x,draw_y);
    }
    draw_primitive_end();
    return 0;
}

function draw_bezier_curve(x1, y1, x2, y2, x3, y3, step) {
	var p1_x, p1_y, p2_x, p2_y, p3_x, p3_y, j;
	draw_primitive_begin(pr_linestrip);
	for (var i = 0; i<=1; i+=step) {
		j = 1 - i;
		p1_x = x1 * j + x2 * i;
		p1_y = y1 * j + y2 * i;
		p2_x = x2 * j + x3 * i;
		p2_y = y2 * j + y3 * i;
		p3_x = p1_x * j + p2_x * i;
		p3_y = p1_y * j + p2_y * i;
		draw_vertex(p3_x,p3_y);
	}
	draw_primitive_end();
}

function draw_bezier_curve_thick(x1, y1, x2, y2, x3, y3, step, thickness) {
	var p1_x, p1_y, p2_x, p2_y, p3_x, p3_y, j;
	var last_x = x1;
	var last_y = y1;
	for (var i = step; i<=1; i+=step) {
		j = 1 - i;
		p1_x = x1 * j + x2 * i;
		p1_y = y1 * j + y2 * i;
		p2_x = x2 * j + x3 * i;
		p2_y = y2 * j + y3 * i;
		p3_x = p1_x * j + p2_x * i;
		p3_y = p1_y * j + p2_y * i;
		draw_line_width(last_x, last_y, p3_x,p3_y, thickness);
		last_x = p3_x;
		last_y = p3_y;
	}
}

function draw_curve_n_thick(points, step, thickness) {
	var cur = points[0];
	var arr_len = array_length(points)
	for (var i = 1; i<arr_len-3; i++) {
		var mid_x = (points[i+2][0] + points[i+1][0]) / 2;
		var mid_y = (points[i+2][1] + points[i+1][1]) / 2;
		draw_bezier_curve_thick(cur[0], cur[1], 
			points[i+1][0], points[i+1][1],
			mid_x, mid_y,
			step, thickness);
		cur = points[i+1];
	}
	draw_bezier_curve_thick(cur[0], cur[1], 
		points[arr_len-2][0], points[arr_len-2][1],
		points[arr_len-1][0], points[arr_len-1][1],
		step, thickness);
}