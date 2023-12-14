/// @description 

// Inherit the parent event
event_inherited();

// since we have no idle animation as of now
// stop idle animation at frame 1
if (not is_moving) {
	image_speed = 0.1
} else {
	image_speed = 1; // Or whatever speed you want the animation to play at when moving
}