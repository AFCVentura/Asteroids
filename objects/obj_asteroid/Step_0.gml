if x < 0 || x > room_width || y < 0 || y > room_height
{  // Checagem se saiu da sala
	instance_destroy()
}

image_angle += var_rotacao

