/// @description Update movement

if (dir_x != 0 || dir_y != 0) {
	if (not is_moving) {
		// prefer X over Y
		if (dir_x != 0) dir_y = 0;

		// next position
		var _new_tilex = to_tile(x) + dir_x
		var _new_tiley = to_tile(y) + dir_y

		// Collision
		var _has_collision = collisions(_new_tilex, _new_tiley)

		if (not _has_collision) {
			target_x = to_room(_new_tilex+0.5)
			target_y = to_room(_new_tiley+0.5)
			is_moving = true
		} else {
			// when not moving and has collision
			move_direction = point_direction(0,0, dir_x, dir_y)
		}
	}
}

// Move
if (is_moving) {
	set_state(states.walk)
	var _distance = point_distance(x, y, target_x, target_y)
	if (_distance > move_speed) {
		// sign returns 1 if value is positive, -1 for negative, else 0
		x += sign(target_x - x) * move_speed
		y += sign(target_y - y) * move_speed
		move_direction = point_direction(x, y, target_x, target_y)
	} else {
		// reached destination target
		is_moving = false
		x = target_x
		y = target_y
		set_state(states.idle)
	}
}

sprite_index = get_sprite(move_direction)






