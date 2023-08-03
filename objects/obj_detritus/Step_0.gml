image_angle += var_rotacao  // ângulo do sprite girando
if x < 0 || x > room_width || y < 0 || y > room_height
{  // checagem se saiu da tela
	instance_destroy()
}
