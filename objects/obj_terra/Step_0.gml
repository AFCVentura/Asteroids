// Aumento da rotação natural da terra
rotacao_terra += 0.01

if instance_exists(var_player){
	
	// X do Player
	var _player_x = var_player.x
	
	// Rotação pelo Player
	rotacao_by_player = _player_x / 60
	
	// Rotação Total
	rotacao_total = rotacao_by_player + rotacao_terra
	
	// Movimentação da terra suavizada
	image_angle = approach(image_angle, rotacao_total, 0.2)
	x = lerp(x, obj_player.x, obj_camera.view_speed)
	y = lerp(y, obj_player.y + distance, obj_camera.view_speed)
}


