/// @description 

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

// Step event for obj_player
if (mouse_check_button_pressed(mb_right)) {
	global.players[? id].start_x = x;
    global.players[? id].start_y = y;
}

if (mouse_check_button(mb_right)) {
	global.players[? id].end_x = mouse_x;
    global.players[? id].end_y = mouse_y;
}

// Right click released for obj_player
if (mouse_check_button_released(mb_right)) {
    var _ball = instance_create_layer(x, y, "Instances", obj_ball)
    _ball.start_x = global.players[? id].start_x
    _ball.start_y = global.players[? id].start_y
	var _end_x = global.players[? id].end_x
	var _end_y = global.players[? id].end_y

	// Calculate distance and reversed direction
	var _distance = point_distance(global.players[? id].start_x, global.players[? id].start_y, _end_x, _end_y);
	var _direction = point_direction(_ball.start_x, _ball.start_y, _end_x, _end_y) + 180; // Add 180 to reverse the direction

	// Apply new direction to target position
	_ball.target_x = global.players[? id].start_x + lengthdir_x(_distance, _direction);
	_ball.target_y = global.players[? id].start_y + lengthdir_y(_distance, _direction);
}

