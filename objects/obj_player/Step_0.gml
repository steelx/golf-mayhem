/// @description obj_player step

// Inherit the parent event
event_inherited();


// since we have no idle animation as of now
// stop idle animation at frame 1
if (not is_moving) {
	image_index = 0
	image_speed = 0
	// player face to mouse
	dir_x = sign(mouse_x - x)
	dir_y = sign(mouse_y - y)
	move_direction = point_direction(0, 0, dir_x, dir_y);
} else {
	image_speed = 1; // Or whatever speed you want the animation to play at when moving
}

// player is standing on his ball then we continue
if (ball == noone or ball_within_hitting_radius()) {
	// ball release logic
	if (ball != noone and mouse_check_button_pressed(mb_right)) {
		if (place_meeting(mouse_x, mouse_y, ball)) {
			obj_room_manager.players[? id].start_x = ball.x
			obj_room_manager.players[? id].start_y = ball.y
		}
	} else if (ball == noone and mouse_check_button_pressed(mb_right)) {
		obj_room_manager.players[? id].start_x = x
		obj_room_manager.players[? id].start_y = y
	}

	if (mouse_check_button(mb_right)) {
		obj_room_manager.players[? id].end_x = mouse_x;
		obj_room_manager.players[? id].end_y = mouse_y;
		// player face to mouse
		move_direction = point_direction(
			obj_room_manager.players[? id].start_x,
			obj_room_manager.players[? id].start_y,
			mouse_x, mouse_x
		) + 180;// 180 to reverse the direction
	}

	// Right click released for obj_player
	if (mouse_check_button_released(mb_right)) {
		audio_play_sound(snd_golf_ball_strike, 1, false)

		var _is_players_ball = false
		var _ball_owner_id = noone
		if (ball != noone and instance_exists(ball)) {
			// ball is within player's radius
			_is_players_ball = ball.owner_id == id
			if (not _is_players_ball) {
				_ball_owner_id = ball.owner_id
			}
			instance_destroy(ball)
			ball = noone
		}

		var _start_x = obj_room_manager.players[? id].start_x
		var _start_y = obj_room_manager.players[? id].start_y
		var _end_x = obj_room_manager.players[? id].end_x ?? 0
		var _end_y = obj_room_manager.players[? id].end_y ?? 0

		// Calculate distance and reversed direction
		var _distance = point_distance(_start_x, _start_y, _end_x, _end_y);
		var _direction = point_direction(_start_x, _start_y, _end_x, _end_y) + 180; // Add 180 to reverse the direction

		// Apply new direction to target position
		var _target_x = _start_x + lengthdir_x(_distance, _direction);
		var _target_y = _start_y + lengthdir_y(_distance, _direction);
		
		ball = (ball == noone) ? instance_create_layer(_start_x, _start_y, "Instances", obj_ball) : ball
		ball.start_x = _start_x
		ball.start_y = _start_y
		var _landing_xy = ball.random_point_in_circle(_target_x, _target_y, 16)
		ball.target_x = _landing_xy[0]
		ball.target_y = _landing_xy[1]
		_ball_owner_id = (_ball_owner_id != noone) ? _ball_owner_id : id
		ball.owner_id = _is_players_ball ? id : _ball_owner_id
	}

}






