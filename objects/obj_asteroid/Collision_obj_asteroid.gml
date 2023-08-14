part_emitter_region(global.sistema_particulas, global.emissor_particulas, other.x, other.x, other.y, other.y, ps_shape_ellipse, ps_distr_gaussian)
part_emitter_burst(global.sistema_particulas, global.emissor_particulas,global.particula_asteroide, 20)

var incremento_sprite_shards = 0

if alarm[0] <= 0 {
	alarm[0] = 60
	if other.sprite_index = spr_asteroid2
		{
			// Cria três asteróides menores no outro
			with other {
				repeat (3)
				{
					var var_inst_asteroide2_pieces = instance_create_layer(self.x,self.y, "Instances", obj_asteroid2_shards)
					var_inst_asteroide2_pieces.image_index = incremento_sprite_shards
					var_inst_asteroide2_pieces.direction = random_range(0, 359)
					var_inst_asteroide2_pieces.speed = other.speed - (other.speed * 0.50)
					incremento_sprite_shards += 1
				
			
				}	
				instance_destroy()
			}
				
			
			}	

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
				var var_inst_detritus = instance_create_layer(self.x, self.y, "Instances", obj_detritus)
				var_inst_detritus.direction = random_range(0, 359)
				
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
	else if other.sprite_index = spr_asteroid2 {
	// Cria três asteróides menores em mim
		with other {
			repeat (3) {
				var var_inst_asteroide2_pieces = instance_create_layer(self.x,self.y, "Instances", obj_asteroid2_shards)
				var_inst_asteroide2_pieces.image_index = incremento_sprite_shards
				var_inst_asteroide2_pieces.direction = random_range(0, 359)
				var_inst_asteroide2_pieces.speed = other.speed - (other.speed * 0.50)
				incremento_sprite_shards += 1
			}
			instance_destroy()
		}
	}
