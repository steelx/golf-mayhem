/// gml_pragma is a special function used to instruct the compiler 
/// to perform specific actions before the game actually begins
gml_pragma("global", "_init()");

// Items
enum ITEM {
	CORNER,
	APPLE,
	SPEED,
}

function _init() {
global.items_sprite[ITEM.CORNER] = spr_corner
global.items_sprite[ITEM.APPLE] = spr_apple
global.items_sprite[ITEM.SPEED] = spr_speed
}