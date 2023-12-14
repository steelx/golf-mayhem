
/// _px: float pixel coord, returns tile x or y int value
function to_tile(_px) {
	return (_px div TILESIZE)
}

/// Given Tile int, returns Pixel coordinates inside room
function to_room(_val) {
	return (_val * TILESIZE)
}
