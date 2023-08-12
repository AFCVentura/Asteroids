// Variáveis
var var_inst_asteroid1

var incremento_sprite_shards = 0
var incremento_direcao_shards = -5
var incremento_direcao_detritus = -1


// Se o alarme de cooldown do dano for zero, diminui a vida do player e põe o alarme de novo
if alarm[0] <= 0
{
	closest_instance_from_player = other.id
	angle_spaceship_asteroid = point_direction(x, y, closest_instance_from_player.x, closest_instance_from_player.y)
	
	vida_player -= 1
	alarm[0] = 60
	
	alpha_damage = 1
	
	// Zerando o tempo para não ter bug
	tempo_w = 0
	tempo_a = 0
	tempo_s = 0
	tempo_d = 0
	
	// Se o sprite for o do asteróide médio
	if other.sprite_index = spr_asteroid2
	{
		// Cria três asteróides menores
		with other {
			repeat (3)
			{
				var var_inst_asteroide2_shards = instance_create_layer(x,y, "Instances", obj_asteroid2_shards)
				var_inst_asteroide2_shards.image_index = incremento_sprite_shards
				var_inst_asteroide2_shards.direction = obj_player.angle_spaceship_asteroid + incremento_direcao_shards
				var_inst_asteroide2_shards.speed = other.speed - (other.speed * 0.50)
				incremento_direcao_shards += 5
				incremento_sprite_shards += 1
				
				if other.speed < 1 {
					var_inst_asteroide2_shards.speed = 1
				}
				else {
					var_inst_asteroide2_shards.speed = other.speed - (other.speed * 0.5)
				}
				self.speed = clamp(self.speed, 0.3, infinity)
				
			
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
			self.direction = obj_player.angle_spaceship_asteroid
			self.speed = other.speed - (other.speed * 0.9)
			
			var quant_detritos = random_range(1, 5)
			for (var i = 1; i <= quant_detritos; i++) {
				incremento_direcao_detritus = random_range(-10, 10)
				var var_inst_detritus = instance_create_layer(self.x, self.y, "Instances", obj_detritus)
				var_inst_detritus.direction = obj_player.angle_spaceship_asteroid + incremento_direcao_detritus
				
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
	speed = lerp(1, 0, 0.1)
	direction = angle_spaceship_asteroid - 180
	sprite_index = spr_spaceship_idle_original
}





