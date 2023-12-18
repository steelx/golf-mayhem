/// @description Insert description here

if (hp <= 0) {
	instance_destroy();

	// spwan colectible item
	// 1 means one chance to spawn,
	// 2 has two chances
	// eg. 3 = 3 resource ITEM will spawn, but has lowest probablity
	var _res_chance = choose(1,1,1,1, 2,2, 3)
	
	// eg. if obj_tree has 2 resources then res_max will be 2
	var _res_max = array_length(resources)
	
	repeat (_res_chance) {
		var _res_index = irandom(_res_max-1)
		var _resource_id = resources[_res_index]
		
		var _x = x + irandom_range(-4, 4)
		var _y = y + irandom_range(-4, 4)
		var _item_inst = instance_create_layer(_x, _y, "Instances", obj_collectible_parent)
		
		with (_item_inst) {
			type = _res_index
			sprite_index = global.items_sprite[_res_index]
		}
	}
}



















