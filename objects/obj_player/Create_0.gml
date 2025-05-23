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

selector_frame = 0
selector_frame_max = sprite_get_number(spr_corner)

held_item = instance_create_layer(x, y, "Instances", obj_golf_bat)


function ball_within_hitting_radius() {
	return (instance_exists(obj_ball) and ball != noone and distance_to_object(ball) <= ball_hitting_radius)
}


function collectible_within_radius() {
	return (instance_exists(obj_collectible_parent) and distance_to_object(obj_collectible_parent) <= ball_hitting_radius)
}
