var _margin = 20
if x < global.camera_x - _margin || x > global.camera_x + global.camera_width + _margin || y < global.camera_y - _margin|| y > global.camera_y + global.camera_height + _margin
{  // Checagem se saiu da sala
	instance_destroy()
}
