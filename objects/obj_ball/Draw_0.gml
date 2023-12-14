/// @description draw self
depth=-y

if (bounce > 0) {
	draw_sprite_ext(spr_shadow,0,x,y,shadow_scale,shadow_scale,0,c_white,.5)
}

draw_sprite(spr_ball,0,x,y-z)
