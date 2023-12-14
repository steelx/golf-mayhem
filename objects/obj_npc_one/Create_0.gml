/// @description NPC one
// Inherit the parent event
event_inherited();

states = {
	idle: {
		left: spr_player_left,
		right: spr_player_right,
		down: spr_player_down,
		up: spr_player_up
	},
	walk: {
		left: spr_player_left,
		right: spr_player_right,
		down: spr_player_down,
		up: spr_player_up
	},
}


state = states.idle
mask_index = spr_player_down

// randome movement
move_range = 64
min_movetime = 200
max_movetime = 900
alarm[0] = 60
