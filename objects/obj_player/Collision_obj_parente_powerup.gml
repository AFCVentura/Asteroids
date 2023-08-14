// Emite as partículas
part_emitter_region(global.sistema_particulas, global.emissor_particulas, other.x, other.x, other.y, other.y, ps_shape_line, ps_distr_gaussian)
part_emitter_burst(global.sistema_particulas, global.emissor_particulas,global.particula_powerup, 50)


// Cria a figurinha de powerup e o texto
instance_create_layer(other.x, other.y, "Instances", obj_powerup_speed_text)
instance_create_layer(other.x, other.y, "Instances", obj_powerup_speed_figure)

// Destrói o powerup
instance_destroy(other)

// Define que há powerup
bool_powerup = true

// Checa qual o sprite do powerup
if other.sprite_index = spr_powerup_doubleshoot {
	chosen_powerup_sprite_idle = spr_spaceship_idle_doubleshoot
	chosen_powerup_sprite_moving = spr_spaceship_moving_doubleshoot
	var_velocidade = 3
	powerup_bullet_speed_multiplier = 6
	
}
else if other.sprite_index = spr_powerup_heavy {
	chosen_powerup_sprite_idle = spr_spaceship_idle_heavy
	chosen_powerup_sprite_moving = spr_spaceship_moving_heavy
	var_velocidade = 3
	powerup_bullet_speed_multiplier = 6
}
else if other.sprite_index = spr_powerup_sniper{
	chosen_powerup_sprite_idle = spr_spaceship_idle_sniper
	chosen_powerup_sprite_moving = spr_spaceship_moving_sniper
	var_velocidade = 3
	powerup_bullet_speed_multiplier = 20
}
else if other.sprite_index = spr_powerup_speed{
	chosen_powerup_sprite_idle = spr_spaceship_idle_speed
	chosen_powerup_sprite_moving = spr_spaceship_moving_speed
	var_velocidade = 6
	powerup_bullet_speed_multiplier = 8
}
else if other.sprite_index = spr_powerup_tripleshoot {
	chosen_powerup_sprite_idle = spr_spaceship_idle_tripleshoot
	chosen_powerup_sprite_moving = spr_spaceship_moving_tripleshoot
	var_velocidade = 3
	powerup_bullet_speed_multiplier = 6
}



