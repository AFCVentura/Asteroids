/// @description Setando Câmera

global.camera_width_withzoom = global.camera_width + zoom_in_x - zoom_out_x
global.camera_height_withzoom = global.camera_height + zoom_in_y - zoom_out_y
// Zoom
if mouse_wheel_down() {

	zoom_in_x += 16
	zoom_in_y += 9
	camera_set_view_size(view_camera[0], global.camera_width + zoom_in_x, global.camera_height + zoom_in_y)
}
else if mouse_wheel_up() {

	zoom_out_x += 16
	zoom_out_y += 9
	camera_set_view_size(view_camera[0], global.camera_width - zoom_out_x, global.camera_height - zoom_out_y)
}

// Tamanho da câmera
camera_set_view_size(view_camera[0], global.camera_width_withzoom, global.camera_height_withzoom)

// Seguindo o player
if instance_exists(view_target) {
	
	// Variáveis locais para o x e y do player
	var _target_x = view_target.x - global.camera_width_withzoom / 2
	var _target_y = view_target.y - global.camera_height_withzoom / 2
	
	/*
	// Clamp limita o valor min e max da variável
	_target_x = clamp(_target_x, 0, room_width - global.camera_width_withzoom)
	_target_y = clamp(_target_y, 0, room_height - global.camera_height_withzoom)
	*/
	
	// Variáveis com x e y da câmera antes
	var _camera_x = camera_get_view_x(view_camera[0])
	var _camera_y = camera_get_view_y(view_camera[0])
	
	// Variável com x e y da câmera depois
	global.camera_x = lerp(global.camera_x, _target_x, view_speed)
	global.camera_y = lerp(global.camera_y, _target_y, view_speed)
	
	// Mandando a camera seguir o player de forma suave
	camera_set_view_pos(view_camera[0], global.camera_x, global.camera_y)
}

// Comando para setar tela cheia (F11)
if keyboard_check_pressed(vk_f11){  // Comando para colocar em tela cheia
	window_set_fullscreen(!window_get_fullscreen())
	window_center()
	
}







