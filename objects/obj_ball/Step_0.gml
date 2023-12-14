/// ball step

if(timer<length)
    timer++;
else
{
    timer=length;
    if(bounce>0)
    {
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
    }
}
x=lerp(start_x,target_x,timer/length);
y=lerp(start_y,target_y,timer/length);
z=arc(0,height,0,timer/length,.8);
    
shadow_alpha=lerp(shadow_alpha_max,shadow_alpha_min,z/32);
shadow_scale=lerp(shadow_scale_max,shadow_scale_min,z/32);

/*
shadow_alpha=0;
shadow_alpha_min=.25;
shadow_alpha_max=.5;
shadow_scale=1;
shadow_scale_min=.5;
shadow_scale_max=1;
*/
