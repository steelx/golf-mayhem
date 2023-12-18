/// @description collect item

// can player collect this item
if (not collected and place_meeting(x, y, obj_player)) {
	// Add to inventory
	// TODO
	
	
	collected = true
}

// fade away and destroy
if (collected) {
	image_alpha -= 0.05;
	y -= 0.5;
	
	if (image_alpha <= 0) instance_destroy();
}






















