/// @description draw corner

if (instance_exists(obj_ball) and ball_within_hitting_radius()) {
    // Run code in ball instance
    with (ball) {
        // draw spr_corner around ball bounding box
		var _is_players_ball = other.id == owner_id
		var _color = _is_players_ball ? c_blue : c_red
        draw_sprite_ext(spr_corner, other.selector_frame, bbox_left, bbox_top, 1, 1, 0, _color, 1);
        draw_sprite_ext(spr_corner, other.selector_frame, bbox_right, bbox_top, 1, 1, -90, _color, 1);
        draw_sprite_ext(spr_corner, other.selector_frame, bbox_right, bbox_bottom, 1, 1, 180, _color, 1);
        draw_sprite_ext(spr_corner, other.selector_frame, bbox_left, bbox_bottom, 1, 1, 90, _color, 1);
    }

    // Animation
    selector_frame += 0.15;
    if (selector_frame > selector_frame_max) selector_frame -= selector_frame_max;
}







