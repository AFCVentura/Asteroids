var _display_width = 1920
var _display_height = 1080

var gui_width = 960
var gui_height = 540

display_set_gui_size(gui_width, gui_height)

view_wport[0] = _display_width
view_hport[0] = _display_height

surface_resize(application_surface, _display_width, _display_height)

camera_set_view_size(view_camera[0], 960, 540)