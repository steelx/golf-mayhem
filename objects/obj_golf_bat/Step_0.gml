/// @description 


rotation = lerp(rotation, 45, 0.1)
image_angle = rotation * obj_player.dir_x

var _mouse_press = mouse_check_button(mb_left)
var _breakable = instance_position(mouse_x, mouse_y, obj_breakable_parent)

with (_breakable) {
	var _distance = distance_to_object(obj_player)
	
	if (_distance < other.break_distance) {
		other.selected_instance = id
		if (other.cooldown == 0 and _mouse_press) {
			hp--;
			other.rotation = -80
			other.cooldown = 20
		}
	}
}


if (cooldown > 0) cooldown--;










