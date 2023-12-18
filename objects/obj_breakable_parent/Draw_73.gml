/// @description draw healthbar
/// runs after first hit from player since hp will reduce by 1
if (hp < hp_max) {
	var _amount = hp / hp_max
	var _y = bbox_bottom + 1

	// healthbar
	var _sprite_width = 16
	draw_set_color(c_green)
	draw_rectangle(bbox_left, _y, bbox_left + 16*_amount, _y+_healthbar_height, 0)
	draw_set_color(-1)
	
	//border
	draw_rectangle(bbox_left, _y, bbox_right, _y+_healthbar_height, 1)
}


