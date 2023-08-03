move_wrap(true, true, 46)

image_angle += var_rotacao

if vida_asteroid <= vida_inicial-1
{
	sprite_index = spr_asteroid1_1damage
}
if vida_asteroid <= vida_inicial-2
{
	sprite_index = spr_asteroid1_2damage
}
if vida_asteroid <= vida_inicial-3
{
	
	sprite_index = spr_asteroid2
}


