/// @description stick held_item to player

// Inherit the parent event
event_inherited();

if (instance_exists(held_item)) {
	held_item.x = x
	held_item.y = y
}