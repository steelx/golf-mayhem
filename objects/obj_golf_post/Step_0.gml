/// @description Insert description here
// check if obj_ball overlapping

if (instance_exists(obj_ball)) {
    if (place_meeting(x, y, obj_ball)) {
        with (obj_ball) {
            if (ds_map_exists(obj_room_manager.players, owner_id)) {
                if (ds_map_exists(obj_room_manager.players[? owner_id], "score")) {
	                obj_room_manager.players[? owner_id].score += 1;
	            } else {
	                obj_room_manager.players[? owner_id].score = 1;
	            }
				show_debug_message($"Player {owner_id} :: {obj_room_manager.players[? owner_id].score} scored!");
				instance_destroy();
				audio_play_sound(snd_golf_ball_hit, 1, false)
			}
        }
    }
}

