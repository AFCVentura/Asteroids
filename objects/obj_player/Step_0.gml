alpha_damage = lerp(alpha_damage, 0, lerp(0.05, 0.001, 0.001))
direction_hit = direction - 180


#region Limite da sala
// Impondo limite às variáveis
x = clamp(x, 50, room_width - 50)
y = clamp(y, 30, room_height - 30)


#endregion

if alarm[0] <= 0 {
	
	#region Tiro
	if keyboard_check_pressed(vk_space)
	{
		var _xx1 = x + lengthdir_x(10, image_angle + 80)
		var _yy1 = y + lengthdir_y(10, image_angle + 80)
		var_bullet_inst = instance_create_layer(_xx1,_yy1,"Instances", obj_bullet) // variável que armazena o valor da instância
		var_bullet_inst.speed = speed + 5
		var_bullet_inst.direction = direction
		var_bullet_inst.image_angle = direction
	
		var _xx2 = x + lengthdir_x(10, image_angle - 80)
		var _yy2 = y + lengthdir_y(10, image_angle - 80)
		var_bullet_inst = instance_create_layer(_xx2,_yy2,"Instances", obj_bullet) // variável que armazena o valor da instância
		var_bullet_inst.speed = speed + 5
		var_bullet_inst.direction = direction
		var_bullet_inst.image_angle = direction
	
	}
	#endregion

	#region Frente/Trás
	if keyboard_check(ord("W"))
	{  // Cronômetro para o W
		tempo_w += 1
	}
	if keyboard_check(ord("S"))
	{  // Cronômetro para o S
		tempo_s += 1
	}

	// Checando se está na área de manobra do X na esquerda
	if x <= 250 {
	
		// Começa manobra de girar
		var_direcao = approach(var_direcao, 180, 5)
		direction += var_direcao
		image_angle = direction
	
		sprite_index = spr_player_moving
	
		// Se girou o suficiente, para de girar
		if direction > 0 && direction < 30 || direction < 360 && direction > 330 {
			var_direcao = 0
			direction += var_direcao
			image_angle = direction
		}

	}
	// Área de manobra do X da direita
	else if x >= room_width - 250 {

		// Começa manobra de girar
		var_direcao = approach(var_direcao, 180, 5)
		direction += var_direcao
		image_angle = direction
	
		sprite_index = spr_player_moving
		speed = var_velocidade
	
		// Se girou o suficiente, para de girar
		if direction > 150 && direction < 210{
			var_direcao = 0
			direction += var_direcao
			image_angle = direction
		}
	}
	// Se não está em nenhuma área de manobra, move normal
	else{
		if keyboard_check(ord("W")) && tempo_w > tempo_s
		{  // Checando se o W foi apertado antes...
			sprite_index = spr_player_moving
			if keyboard_check(ord("S")){  // ... E se o S está sendo apertado também
				speed = var_velocidade - (var_velocidade*2)
			}
			else {  // E se o S não está sendo apertado também
				speed = var_velocidade	
			}
		}
		else if keyboard_check(ord("S")) && tempo_w < tempo_s
		{  // Checando se o W foi apertado antes...
			sprite_index = spr_player_moving
			if keyboard_check(ord("W")){  // ... E se o W está sendo apertado também
				speed = (var_velocidade*2) - var_velocidade
			}
			else {  // E se o W não está sendo apertado também
				speed = -var_velocidade
			}
		}
		else if !keyboard_check(ord("W")) && !keyboard_check(ord("S"))
		{  // Checando se parou de apertar
			speed = 0
			sprite_index = spr_player_idle
		}
	}


	if keyboard_check(ord("W")) && tempo_w == tempo_s
	{  // Checando se apertou os dois ao mesmo tempo
		speed = 0
		sprite_index = spr_player_idle
	}


	if keyboard_check_released(ord("W"))
	{  // Mandando zerar o tempo se soltou a tecla
		tempo_w = 0
	}
	if keyboard_check_released(ord("S"))
	{  // Mandando zerar o tempo se soltou a tecla
		tempo_s = 0
	}
	#endregion


	#region Esquerda/Direita
	if keyboard_check(ord("A"))
	{  // Cronômetro para o A
		tempo_a += 1
	}
	if keyboard_check(ord("D"))
	{  // Cronômetro para o D
		tempo_d += 1
	}


	if y <= 100 && x > 250 && x < room_width - 250 {

		var_direcao = approach(var_direcao, 90, 5)
		direction += var_direcao
		image_angle = direction
	
		sprite_index = spr_player_moving
		speed = var_velocidade
	
		if direction > 240 && direction < 300{
			var_direcao = 0
			direction += var_direcao
			image_angle = direction
		}
	}
	else if y >= room_height - 100 && x > 250 && x < room_width - 250 {
		var_direcao = approach(var_direcao, 270, 5)
		direction += var_direcao
		image_angle = direction
	
		sprite_index = spr_player_moving
		speed = var_velocidade
	
		if direction > 60 && direction < 120{
			var_direcao = 0
			direction += var_direcao
			image_angle = direction
		}
	}
	else {
		if keyboard_check(ord("A")) && tempo_a > tempo_d
		{  // Checando se o A foi apertado antes...
			if keyboard_check(ord("D")){  // ... E se o D está sendo apertado também
				var_direcao = -4
				
			}
			else {  // E se o D não está sendo apertado também
				var_direcao = 4

			}
		}

		else if keyboard_check(ord("D")) && tempo_a < tempo_d
		{  // Checando se o D foi apertado antes...
			if keyboard_check(ord("A")){  // ... E se o A está sendo apertado também
				var_direcao = 4
				
			}
			else {  // E se o A não está sendo apertado também
				var_direcao = -4
				
			}
		}
	}


	direction += var_direcao
	image_angle = direction

	
	if keyboard_check(ord("A")) && tempo_a == tempo_d
	{  // Checando se apertou os dois ao mesmo tempo
		var_direcao = 0
	}
	else if !keyboard_check(ord("A")) && !keyboard_check(ord("D"))
	{  // Checando se parou de apertar
		var_direcao = 0
	}

	if keyboard_check_released(ord("A"))
	{  // Mandando zerar o tempo se soltou a tecla
		tempo_a = 0
	}
	if keyboard_check_released(ord("D"))
	{  // Mandando zerar o tempo se soltou a tecla
		tempo_d = 0
	}
}

#endregion

if vida_player <= 0
{
	game_restart()
}
