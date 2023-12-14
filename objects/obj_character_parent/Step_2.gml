/// @description reached path end

if (path_next_point > 0 and x == path_point_x and y == path_point_y) {
	path_next_point++;
	
	// path is over
	if (path_next_point >= path_get_number(path)) {
		path_next_point = 0;
	}
}
