global.resolution = {
	width: 720,
	height: 480,
	scale: 2
}

var _w = global.resolution.width*global.resolution.scale
var _h = global.resolution.height*global.resolution.scale

// set resolution
surface_resize(application_surface, _w, _h)

// resize window
window_set_size(_w, _h)

// GUI
display_set_gui_size(_w, _h)

var _user_display_w = display_get_width()
var _user_display_h = display_get_height()

window_set_position(
	_user_display_w/2 - _w/2,
	_user_display_h/2 - _h/2
)