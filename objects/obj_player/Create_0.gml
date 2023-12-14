/// @description player init

// Inherit the parent event
event_inherited();

// You can write your code in this editor

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

global.players[? id] = ds_map_create()
is_ball_in_contact = false