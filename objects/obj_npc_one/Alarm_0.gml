/// @description random movement

if (not is_moving) {
	// move to new point
	var _targetx = irandom_range(xstart-move_range, xstart+move_range)
	var _targety = irandom_range(ystart-move_range, ystart+move_range)
	var _tilex = to_tile(_targetx) + 0.5
	var _tiley = to_tile(_targety) + 0.5
	var _x = to_room(_tilex)
	var _y = to_room(_tiley)
	move_to_point(_x, _y)
	
	
	// reset alarm
	alarm[0] = irandom_range(min_movetime, max_movetime)
}

