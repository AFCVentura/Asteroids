// Variáveis
var var_inst_asteroid1
var var_inst_asteroide2_pieces
var incremento_sprite_shards = 0
var incremento_direcao = -5


// Se o alarme de cooldown do dano for zero, diminui a vida do player e põe o alarme de novo
if alarm[0] <= 0
{
	vida_player -= 1
	
	
	
	alarm[0] = 180
	
	// Se o sprite for o do asteróide médio
	if other.sprite_index = spr_asteroid2
	{
		// Cria três asteróides menores
		with other {
			repeat (3)
			{
				var_inst_asteroide2_pieces = instance_create_layer(self.x,self.y, "Instances", obj_asteroid2_shards)
				var_inst_asteroide2_pieces.image_index = incremento_sprite_shards
				var_inst_asteroide2_pieces.direction = other.direction + incremento_direcao
				var_inst_asteroide2_pieces.speed = other.speed - (other.speed * 0.50)
				incremento_direcao += 5
				incremento_sprite_shards += 1
				
			
			}	
			instance_destroy()
		}
	}
	// Se o sprite for dos asteróides pequenos ou dos detritos
	else if other.sprite_index = spr_asteroid2_shards || other.sprite_index = spr_detritus
	{
		// Destrói eles
		instance_destroy(other)
	}
	// Se for o do grande
	else if other.sprite_index = spr_asteroid1
	{	
		// Lança detritos e muda sprite
		with other {
			if self.image_index = sprite_get_number(spr_asteroid1) - 1 {
				self.sprite_index = spr_asteroid2
			}
			else {
				self.image_index += 1
			}
			self.direction = other.direction
			self.speed = other.speed - (other.speed * 0.9)
			
			var quant_detritos = random_range(1, 5)
			for (var i = 1; i <= quant_detritos; i++) {
				incremento_direcao = random_range(-10, 10)
				var var_inst_detritus = instance_create_layer(self.x, self.y, "Instances", obj_detritus)
				var_inst_detritus.direction = other.direction + incremento_direcao
				
				if other.speed < 1 {
					var_inst_detritus.speed = 1
				}
				else {
					var_inst_detritus.speed = other.speed - (other.speed * 0.5)
				}
				self.speed = clamp(self.speed, 0.3, infinity)
				
			}
		}

	}
}





