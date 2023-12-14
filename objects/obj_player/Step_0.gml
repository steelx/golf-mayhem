/// @description obj_place step

// Inherit the parent event
event_inherited();

// since we have no idle animation as of now
// stop idle animation at frame 1
if (not is_moving) {
	image_index = 0
	image_speed = 0
} else {
	image_speed = 1; // Or whatever speed you want the animation to play at when moving
}

// player is standing on his ball then we continue
if (ball == noone or (ball != noone and place_meeting(x, y, ball)) ) {

// ball release logic
if (mouse_check_button_pressed(mb_right)) {
	//var _x_offset = move_direction == 0 ? 8 : (move_direction == 180 ? -8 : 0)
	//var _y_offset = move_direction == 90 ? -8 : (move_direction == 270 ? 8 : 0)
	global.players[? id].start_x = x
	global.players[? id].start_y = y
}

if (mouse_check_button(mb_right)) {
	global.players[? id].end_x = mouse_x;
	global.players[? id].end_y = mouse_y;
}

// Right click released for obj_player
if (mouse_check_button_released(mb_right)) {
	audio_play_sound(snd_golf_ball_strike, 1, false)

	var _start_x = global.players[? id].start_x
	var _start_y = global.players[? id].start_y
	var _end_x = global.players[? id].end_x
	var _end_y = global.players[? id].end_y
	
	if (ball != noone and instance_exists(ball)) {
		_start_x = ball.x
		_start_y = ball.y
		instance_destroy(ball)
		ball = noone
	}

	// Calculate distance and reversed direction
	var _distance = point_distance(_start_x, _start_y, _end_x, _end_y);
	var _direction = point_direction(_start_x, _start_y, _end_x, _end_y) + 180; // Add 180 to reverse the direction

	// Apply new direction to target position
	var _target_x = _start_x + lengthdir_x(_distance, _direction);
	var _target_y = _start_y + lengthdir_y(_distance, _direction);
	
	
	ball = (ball == noone) ? instance_create_layer(_start_x, _start_y, "Instances", obj_ball) : ball
	ball.start_x = _start_x
	ball.start_y = _start_y
	ball.target_x = _target_x
	ball.target_y = _target_y
}

}