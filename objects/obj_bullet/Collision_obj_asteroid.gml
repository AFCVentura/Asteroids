with other
{
	vida -= 1
}
var incremento_direcao = -5
global.var_direcao_tiro = point_direction(x,y, other.x, other.y)
var var_inst_detritus
var var_inst_asteroide2_pieces


if other.sprite_index = spr_asteroid2
{
	with other {
		
		var_inst_asteroide2_pieces = instance_create_layer(other.x,other.y, "Instances", obj_asteroid2_pieces)
		var_inst_asteroide2_pieces.direction = obj_bullet.direction + incremento_direcao
		var_inst_asteroide2_pieces.speed = obj_bullet.speed - (obj_bullet.speed * 0.30)
		
		incremento_direcao += 5
		
		var_inst_asteroide2_pieces.sprite_index = spr_asteroid2_centerpiece
		
		var_inst_asteroide2_pieces = instance_create_layer(other.x,other.y, "Instances", obj_asteroid2_pieces)
		var_inst_asteroide2_pieces.direction = obj_bullet.direction + incremento_direcao
		var_inst_asteroide2_pieces.speed = obj_bullet.speed - (obj_bullet.speed * 0.30)
		
		incremento_direcao += 5
		
		var_inst_asteroide2_pieces.sprite_index = spr_asteroid2_rightpiece
		
		var_inst_asteroide2_pieces = instance_create_layer(other.x,other.y, "Instances", obj_asteroid2_pieces)
		var_inst_asteroide2_pieces.direction = obj_bullet.direction + incremento_direcao
		var_inst_asteroide2_pieces.speed = obj_bullet.speed - (obj_bullet.speed * 0.30)
		
		incremento_direcao += 5
		
		instance_destroy()
		
		


	}
}
else
{
	with other {

		for (var i = 1; i <= 3; i++) {
			incremento_direcao = random_range(-10, 10)
			var_inst_detritus = instance_create_layer(other.x,other.y, "Instances", obj_detritus)
			var_inst_detritus.direction = obj_bullet.direction + incremento_direcao
			var_inst_detritus.speed = obj_bullet.speed	
		}


	}

}

instance_destroy()


