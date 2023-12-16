/// @description Insert description here

if (ds_map_exists(obj_room_manager.players, obj_player) and instance_exists(obj_player)) {
	var _x = obj_player.x
	var _y = obj_player.y
draw_text(_x + 10, _y+10, obj_room_manager.players[? obj_player].score ?? "-_-")
}





















