/// @description draw end
/// Draw spr_corner around ball bounding box

if (ball_within_hitting_radius()) {
    // Run code in ball instance
    with (ball) {
        // draw spr_corner around ball bounding box
        draw_sprite_ext(spr_corner, other.selector_frame, bbox_left, bbox_top, 1, 1, 0, -1, 1);
        draw_sprite_ext(spr_corner, other.selector_frame, bbox_right, bbox_top, 1, 1, -90, -1, 1);
        draw_sprite_ext(spr_corner, other.selector_frame, bbox_right, bbox_bottom, 1, 1, 180, -1, 1);
        draw_sprite_ext(spr_corner, other.selector_frame, bbox_left, bbox_bottom, 1, 1, 90, -1, 1);
    }

    // Animation
    selector_frame += 0.15;
    if (selector_frame > selector_frame_max) selector_frame -= selector_frame_max;
}







