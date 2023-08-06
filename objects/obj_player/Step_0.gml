spd = speed
/*
if (x < 300) {
	x += spd
	obj_terra.image_angle = (x - (spd*2)) / 150 + obj_terra.rotacao_terra
}
if (x > room_width - 300) {
	x -= spd
	obj_terra.image_angle = (x + (spd*2)) / 150 + obj_terra.rotacao_terra
}
if (y < 20) {y += spd}
if (y > room_height - 20) {y -= spd}
*/

if keyboard_check_pressed(vk_space)
{
	var _xx1 = x + lengthdir_x(10, image_angle + 80)
	var _yy1 = y + lengthdir_y(10, image_angle + 80)
	var var_bullet_inst = instance_create_layer(_xx1,_yy1,"Instances", obj_bullet) // variável que armazena o valor da instância
	var_bullet_inst.speed = speed + 5
	var_bullet_inst.direction = direction
	var_bullet_inst.image_angle = direction
	
	var _xx2 = x + lengthdir_x(10, image_angle - 80)
	var _yy2 = y + lengthdir_y(10, image_angle - 80)
	var var_bullet_inst = instance_create_layer(_xx2,_yy2,"Instances", obj_bullet) // variável que armazena o valor da instância
	var_bullet_inst.speed = speed + 5
	var_bullet_inst.direction = direction
	var_bullet_inst.image_angle = direction
	
}

if keyboard_check(ord("W"))
{
	speed = var_velocidade
	sprite_index = spr_player_moving
	if !place_free(x-spd-2, y-spd-2) || !place_free(x+spd+2, y+spd+2)
	{
	speed = 0
	sprite_index = spr_player_moving
	}
}
else if keyboard_check(ord("S"))
{
	speed = -var_velocidade
	sprite_index = spr_player_moving
	
	if !place_free(x-spd-2, y-spd-2) || !place_free(x+spd+2, y+spd+2)
	{
	speed = 0
	sprite_index = spr_player_moving
	}
}
else
{
	speed = 0
	sprite_index = spr_player_idle
}


if keyboard_check(ord("A"))
{
	var_direcao = 4
}

else if keyboard_check(ord("D"))
{
	var_direcao = -4
}
else 
{
	var_direcao = lerp(var_direcao, 0, 0.06)
}

direction += var_direcao
image_angle = direction


if vida_player <= 0
{
	game_restart()
}
