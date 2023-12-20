/// @description Map, Camera & viewport
var _w = global.resolution.width
var _h = global.resolution.height

camera = camera_create_view(0,0,_w,_h, 0, obj_player, -1, -1, _w/2, _h/2)
var _projmat = matrix_build_projection_ortho(_w, _h, 1.0, 32000.0);

// Enable views
view_enabled = true
view_visible[0] = true
// Assign camera to view [0]
view_set_camera(0, camera)

// room vars
players = ds_map_create()


// tilemap
collision_tiles = layer_tilemap_get_id("tiles_buildings")

// mp grid
var _hcells = room_width div TILESIZE;
var _vcells = room_height div TILESIZE;
//show_message("Cell at (" + string(_hcells) + ", " + string(_vcells) + ")");

global.ai_grid = mp_grid_create(0, 0, _hcells, _vcells, TILESIZE, TILESIZE)
// removed obj_collision_parent from here since we are already checking Collisions at scr_collisions
//mp_grid_add_instances(global.ai_grid, obj_collision_parent, false)


// add each tile x, tile y collision_tiles to grid, e.g. buildings
for (var _x = 0; _x < _hcells; _x++) {
	for (var _y = 0; _y < _vcells; _y++) {
		var _has_collision = tilemap_get(collision_tiles, _x, _y);
		// register tile/cell as an Obstacle
		if (_has_collision) mp_grid_add_cell(global.ai_grid, _x, _y);
	}
}


