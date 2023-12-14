/// @description before update

#region pathfinding

// follow ai_path
if (path_next_point > 0) {
	// path_next_point increaments in -> end step event
	path_point_x = path_get_point_x(path, path_next_point)
	path_point_y = path_get_point_y(path, path_next_point)
	
	dir_x = sign(path_point_x - x)
	dir_y = sign(path_point_y - y)
} else {
	dir_x = 0
	dir_y = 0
}

#endregion












