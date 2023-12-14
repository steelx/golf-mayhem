/// @description init
// Input
dir_x = 0
dir_y = 0

// Movement
move_speed = 1
move_direction = DOWN
is_moving = false

target_x = 0
target_y = 0
state = undefined


// functions
get_sprite = function (_move_dir) {	
	switch (_move_dir) {
		case DOWN: return state.down;
		case UP: return state.up;
		case LEFT: return state.left;
		case RIGHT: return state.right;
		default: return sprite_index;
	}
};

/// allows to switch btw Idle and Move
/// @example: set_state(state.walk)
set_state = function (_new_state) {
	if (state == _new_state) return;
	
	state = _new_state
	image_index = 0 // reset animation frame
};


#region pathfinding

path = path_add()
path_next_point = 0

// direction character is moving towards
path_point_x = 0
path_point_y = 0

/// move to vector xy
/// example tile_x = to_room(5) tile_y = to_room(5)
move_to_point = function (_target_x, _target_y) {
	var _can_move = mp_grid_path(global.ai_grid, path, x, y, _target_x, _target_y, false)
	
	if (_can_move) {
		//path_start(path, 1, path_action_stop, true)
		path_next_point = 1
		//remove  previous values
		path_point_x = 0
		path_point_y = 0
		// at behin step we handle how character uses path to move
	}
}

#endregion