/// create Properties

timer=0;
z=0;
start_x=0;
start_y=0;
target_x=0;
target_y=0;
length=game_get_speed(gamespeed_fps)/2;
is_moving = true;

shadow_alpha=0;
shadow_alpha_min=.1;
shadow_alpha_max=.3;
shadow_scale=.5;
shadow_scale_min=.25;
shadow_scale_max=.5;

bounce=2;
height=48;

function collision_check(_x1, _y1) {
  if (place_meeting(_x1, _y1, obj_npc_parent)) return true;
  return false;
}
