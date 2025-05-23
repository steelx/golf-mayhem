/// @description ball projection line
// Draw event for obj_player
draw_self()

// ball projection line
if (is_moving) return;
if (mouse_check_button(mb_right)) {
    var _start_x = obj_room_manager.players[? id].start_x
    var _start_y = obj_room_manager.players[? id].start_y
	if (ball != noone and instance_exists(obj_ball)) {
        // if we are in ball hitting radius, then we set appropriate start_x and start_y
        _start_x = ball.x
        _start_y = ball.y
    }
    
    var _end_x = obj_room_manager.players[? id].end_x
    var _end_y = obj_room_manager.players[? id].end_y

    var _distance = point_distance(_start_x, _start_y, _end_x, _end_y)
    var _direction = point_direction(_start_x, _start_y, _end_x, _end_y) + 180; // Add 180 to reverse the direction

    draw_set_color(c_white);

    var _dot_gap = 10; // Adjust this to change the spacing between dots
    var _dot_length = 5; // Adjust this to change the length of each dot

    if (ball == noone or ball_within_hitting_radius()) {
        // this means either we are just spawned player or we are in ball hitting radius
        for (var _i = 0; _i < _distance; _i += _dot_gap) {
            var _dot_x = _start_x + lengthdir_x(_i, _direction);
            var _dot_y = _start_y + lengthdir_y(_i, _direction);
            var _next_dot_x = _start_x + lengthdir_x(_i + _dot_length, _direction);
            var _next_dot_y = _start_y + lengthdir_y(_i + _dot_length, _direction);

            draw_line(_dot_x, _dot_y, _next_dot_x, _next_dot_y);
        }
    }
}



