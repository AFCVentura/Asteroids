with other
{
	vida_asteroid -= 1
}

part_emitter_region(global.sistema_particulas, global.emissor_particulas, other.x, other.x, other.y, other.y, ps_shape_ellipse, ps_distr_gaussian)
part_emitter_burst(global.sistema_particulas, global.emissor_particulas,global.particula_asteroide, 20)

var incremento_direcao = -5
var var_inst_detritus
var var_inst_asteroide2_pieces
var incremento_sprite = 0


if other.sprite_index = spr_asteroid2
{
	with other {
		repeat (3)
		{
			var_inst_asteroide2_pieces = instance_create_layer(other.x,other.y, "Instances", obj_asteroid2_shards)
			var_inst_asteroide2_pieces.image_index = incremento_sprite
			var_inst_asteroide2_pieces.direction = obj_bullet.direction + incremento_direcao
			var_inst_asteroide2_pieces.speed = obj_bullet.speed - (obj_bullet.speed * 0.30)
			incremento_direcao += 5
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
		var quant_detritos = random_range(1, 5)
		for (var i = 1; i <= quant_detritos; i++) {
			incremento_direcao = random_range(-10, 10)
			var_inst_detritus = instance_create_layer(other.x,other.y, "Instances", obj_detritus)
			var_inst_detritus.direction = obj_bullet.direction + incremento_direcao
			var_inst_detritus.speed = obj_bullet.speed	
		}


	}

}

instance_destroy()


