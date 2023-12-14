/// ball step
if(timer<length)
    timer++;
else
{
    timer=length;
    if(bounce>0)
    {
		audio_play_sound(snd_ball_bounce, 1, false)
	    bounce--;
	    var _dir=point_direction(start_x,start_y,target_x,target_y);
	    var _dist=point_distance(start_x,start_y,target_x,target_y)/2;
	    target_x=x+lengthdir_x(_dist,_dir);
	    target_y=y+lengthdir_y(_dist,_dir);
	    start_x=x;
	    start_y=y;
	    length*=.75;
	    height/=2;
	    timer=0;
		if (collision_check(x, y)) {
	      show_debug_message("collided")
		  audio_play_sound(snd_golf_ball_hit, 1, false)
		  bounce = 0
		  has_hit_someone = true
	    }
    }
}
x=lerp(start_x,target_x,timer/length);
y=lerp(start_y,target_y,timer/length);
z=arc(0,height,0,timer/length,.8);
    
shadow_alpha=lerp(shadow_alpha_max,shadow_alpha_min,z/32);
shadow_scale=lerp(shadow_scale_max,shadow_scale_min,z/32);

