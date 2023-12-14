/// @description interpolate(val 1, val 2, position, bias)
/// @param val 1
/// @param  val 2
/// @param  position
/// @param  bias
function interpolate() {
	return(lerp(argument[0],argument[1],bias(argument[3],argument[2])));
}


function draw_self_z() {
	//draw_self_z()
	draw_sprite_ext(sprite_index, image_index, round(x), round(y-z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}


function bias(argument0, argument1) {
	/*
	**  Usage:
	**      bias(b,t)
	**
	**  Arguments:
	**      b       bais, real
	**      t       value, real
	**
	**  Returns:
	**      If (t) varies over the [0,1] interval, then
	**      the result also varies over that interval.
	**      The zero and one endpoints of the interval
	**      are mapped onto themselves. Other values
	**      are shifted upward toward one if (b) is
	**      greater than 0.5, and shifted downward
	**      toward zero if (b) is between 0.0 and 0.5.
	**
	**  GMLscripts.com
	*/
	{
	    return argument1/((1/argument0-2)*(1-argument1)+1);
	}
}


/// @description arc(start[0], peak[1], floor[2], position[3], bias[4])
/// @param start[0]
/// @param  peak[1]
/// @param  floor[2]
/// @param  position[3]
/// @param  bias[4]
function arc() {
	if(argument[3]<=.5)
	    return(lerp(argument[0],argument[1],bias(argument[4],argument[3]*2)));
	else
	{
	    var _b=1-argument[4];
	    var _p=2*argument[3]-1
	    return(lerp(argument[1],argument[2],bias(_b,_p)));
	}
}
