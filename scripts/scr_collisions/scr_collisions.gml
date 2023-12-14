
/// checks if Tile exists at given TileXY and returns boolean
function collisions(_tile_x, _tile_y){
	// Tiles
	var _tilemap = obj_room_manager.collision_tiles
	if (tilemap_get(_tilemap, _tile_x, _tile_y)) return true;
	
	
	// Objects e.g. obj_bush_01
	var _x1 = to_room(_tile_x+0.5)
	var _y1 = to_room(_tile_y+0.5)
	
	if (place_meeting(_x1, _y1, obj_collision_parent)) return true;
	
	// NPCs
	if (place_meeting(_x1, _y1, obj_npc_parent)) return true;
	
	return false
}
