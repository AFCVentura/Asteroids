var incremento_direcao = -5
var var_inst_detritus
var var_inst_asteroide2_pieces
var incremento_sprite = 0

if alarm[0] <= 0
{
	vida_player -= 1;


	alarm[0] = 180
	
	if other.sprite_index = spr_asteroid2
	{
		with other {
			repeat (3)
			{
				var_inst_asteroide2_pieces = instance_create_layer(other.x,other.y, "Instances", obj_asteroid2_shards)
				var_inst_asteroide2_pieces.image_index = incremento_sprite
				var_inst_asteroide2_pieces.direction = obj_player.direction + incremento_direcao
				var_inst_asteroide2_pieces.speed = obj_player.speed - (obj_player.speed * 0.15)
				incremento_direcao += 2
				incremento_sprite += 1
				
			
			}	
			instance_destroy()
		}
	}
	else if other.sprite_index = spr_asteroid2_shards
	{
		instance_destroy(other)
	}
	else
	{
		with other {
			var quant_detritos = random_range(1, 3)
			for (var i = 1; i <= quant_detritos; i++) {
				incremento_direcao = random_range(-70, 70)
				var_inst_detritus = instance_create_layer(other.x,other.y, "Instances", obj_detritus)
				var_inst_detritus.direction = obj_player.direction + incremento_direcao
				var_inst_detritus.speed = obj_player.speed - (obj_player.speed * 0.15)
				
				vida_asteroid -= 1
			}


		}

	}
}





