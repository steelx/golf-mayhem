/// @description move to point

var _target_x = to_room(to_tile(mouse_x)+0.5)
var _target_y = to_room(to_tile(mouse_y)+0.5)

// we check if ball is in radius and we clicked on ball then dont move
if (collectible_within_radius() or ball_within_hitting_radius()) return;

move_to_point(_target_x, _target_y)

























