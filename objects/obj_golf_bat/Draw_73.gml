/// @description draw selector

if (instance_exists(selected_instance)) {
	with (selected_instance) {
		var _sprite = global.items_sprite[ITEM.CORNER]
        draw_sprite_ext(_sprite, other.selector_frame, bbox_left, bbox_top, 1, 1, 0, -1, 1);
        draw_sprite_ext(_sprite, other.selector_frame, bbox_right, bbox_top, 1, 1, -90, -1, 1);
        draw_sprite_ext(_sprite, other.selector_frame, bbox_right, bbox_bottom, 1, 1, 180, -1, 1);
        draw_sprite_ext(_sprite, other.selector_frame, bbox_left, bbox_bottom, 1, 1, 90, -1, 1);
	}
	
	selector_frame += 0.15;
	if (selector_frame >= selector_frame_max) selector_frame -= selector_frame_max;
	selected_instance = noone;
}





























