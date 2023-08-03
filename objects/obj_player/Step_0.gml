
if keyboard_check_pressed(vk_space)
{
	var var_bullet_inst = instance_create_layer(x,y,"Instances", obj_bullet) // variável que armazena o valor da instância
	var_bullet_inst.speed = speed + 5
	var_bullet_inst.direction = direction
	var_bullet_inst.image_angle = direction
}

if keyboard_check(ord("W"))
{
	speed = var_velocidade
	sprite_index = spr_player_moving 
}
else if keyboard_check(ord("S"))
{
	speed = -var_velocidade
	sprite_index = spr_player_moving
}
else
{
	speed = lerp(speed, 0, 0.06)
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

move_wrap(true, true, 10)