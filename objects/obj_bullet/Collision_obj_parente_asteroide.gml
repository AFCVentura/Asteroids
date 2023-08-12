// Particulas
part_emitter_region(global.sistema_particulas, global.emissor_particulas, other.x, other.x, other.y, other.y, ps_shape_ellipse, ps_distr_gaussian)
part_emitter_burst(global.sistema_particulas, global.emissor_particulas,global.particula_asteroide, 20)

// Variáveis necessárias
var var_inst_asteroid1
var var_inst_asteroide2_pieces
var incremento_sprite_shards = 0
var incremento_direcao_shards = -5
var incremento_direcao_detritus = -1


// Se o atingido for o asteróide médio
if other.sprite_index = spr_asteroid2
{
	// Gera três pedaços
	with other {
		repeat (3)
		{
			var_inst_asteroide2_pieces = instance_create_layer(self.x,self.y, "Instances", obj_asteroid2_shards)
			var_inst_asteroide2_pieces.image_index = incremento_sprite_shards
			var_inst_asteroide2_pieces.direction = direction + incremento_direcao_shards
			var_inst_asteroide2_pieces.speed = other.speed - (other.speed * 0.30)
			incremento_direcao_shards += 5
			incremento_sprite_shards += 1
			
		}		
		
		instance_destroy()
		
	}
}
// Se o pedaço atingido for um dos pedaços
else if other.sprite_index = spr_asteroid2_shards
{
	instance_destroy(other)



}
// Se o pedaço atingido for um detrito
else if other.sprite_index = spr_detritus{
	instance_destroy(other)
	
	
}
// Se o pedaço atingido for um asteroide grande
else if other.sprite_index = spr_asteroid1
{
	// Diminui a vida
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
			incremento_direcao_detritus = random_range(-10, 10)
			var var_inst_detritus = instance_create_layer(other.x,other.y, "Instances", obj_detritus)
			var_inst_detritus.direction = other.direction + incremento_direcao_detritus
			var_inst_detritus.speed = other.speed - (other.speed * 0.5)
			var_inst_detritus.alarm[0] = 180
		}


	}

}

instance_destroy()


