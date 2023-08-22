alpha_damage = lerp(alpha_damage, 0, lerp(0.05, 0.001, 0.001))

var_bullet_speed = (speed + powerup_bullet_speed_multiplier) * 0.8

// Comando para mapear todas as instâncias do objeto e medir qual a mais próxima
with (obj_parente_asteroide) {
	var _distance_actual_instance = point_distance(x, y, other.x, other.y)
	
	if obj_player.closest_distance_from_player == -1 || _distance_actual_instance < obj_player.closest_distance_from_player {
		obj_player.closest_instance_from_player = id
		obj_player.closest_distance_from_player = _distance_actual_instance
	}
}
if !instance_exists(closest_instance_from_player) {
	angle_spaceship_asteroid = -1
}
else {
	angle_spaceship_asteroid = point_direction(x, y, closest_instance_from_player.x, closest_instance_from_player.y)
}

/*
#region Limite da sala
// Impondo limite às variáveis
x = clamp(x, 50, room_width - 50)
y = clamp(y, 30, room_height - 30)
#endregion
*/

if alarm[0] <= 0 {
	
	direction = image_angle
	
	#region Tiro
	if keyboard_check_pressed(vk_space)
	{
		
		var _xx1 = x
		var _yy1 = y 
		var_bullet_inst = instance_create_layer(_xx1,_yy1,"Instances", obj_bullet) // variável que armazena o valor da instância
		var_bullet_inst.speed = var_bullet_speed
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

	if keyboard_check(ord("W")) && tempo_w > tempo_s
	{  // Checando se o W foi apertado antes...
		sprite_index = chosen_powerup_sprite_moving
		if keyboard_check(ord("S")){  // ... E se o S está sendo apertado também
			speed = var_velocidade - (var_velocidade*2)
		}
		else {  // E se o S não está sendo apertado também
			speed = var_velocidade	
		}
	}
	else if keyboard_check(ord("S")) && tempo_w < tempo_s
	{  // Checando se o W foi apertado antes...
		sprite_index = chosen_powerup_sprite_moving
		if keyboard_check(ord("W")){  // ... E se o W está sendo apertado também
			speed = (var_velocidade * 2) - var_velocidade
		}
		else {  // E se o W não está sendo apertado também
			speed = - var_velocidade
		}
	}
	else if !keyboard_check(ord("W")) && !keyboard_check(ord("S"))
	{  // Checando se parou de apertar
		speed = 0
		sprite_index = chosen_powerup_sprite_idle
	}
}


if keyboard_check(ord("W")) && tempo_w == tempo_s
{  // Checando se apertou os dois ao mesmo tempo
	speed = 0
	sprite_index = chosen_powerup_sprite_idle
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


if keyboard_check(ord("A")) && tempo_a > tempo_d
{  // Checando se o A foi apertado antes...
	if keyboard_check(ord("D")){  // ... E se o D está sendo apertado também
		var_direcao = -4
				
				
	}
	else {  // E se o D não está sendo apertado também
		var_direcao = 4

	}
	direction += var_direcao
	image_angle = direction
}

else if keyboard_check(ord("D")) && tempo_a < tempo_d
{  // Checando se o D foi apertado antes...
	if keyboard_check(ord("A")){  // ... E se o A está sendo apertado também
		var_direcao = 4
				
	}
	else {  // E se o A não está sendo apertado também
		var_direcao = -4	
	}
	direction += var_direcao
	image_angle = direction
}


	
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

#endregion

if vida_player <= 0
{
	game_restart()
}
