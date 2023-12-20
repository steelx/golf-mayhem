/// create Properties

timer=0;
z=0;
start_x=0;
start_y=0;
target_x=0;
target_y=0;
length=game_get_speed(gamespeed_fps)/2;
bounce=2;
height=48;
owner_id = noone;

shadow_alpha=0;
shadow_alpha_min=.1;
shadow_alpha_max=.3;
shadow_scale=.5;
shadow_scale_min=.25;
shadow_scale_max=.5;


// collisions
has_hit_someone = false

function collision_check(_x1, _y1) {
  if (place_meeting(_x1, _y1, obj_character_parent)) return true;
  return false;
}


/// returns new target landing_x and y, given center of target and radius 
/// e.g. _radius 32 will create 32 diam circle on target and choose a random point
/// lower radius means closer to target
function random_point_in_circle(_center_x, _center_y, _radius) {
  var _angle = irandom_range(0, 360);
  var _offset_x = lengthdir_x(_radius, _angle);
  var _offset_y = lengthdir_y(_radius, _angle);
  return [_center_x + _offset_x, _center_y + _offset_y];
}



