text_powerup = instance_create_layer(other.x, other.y, "Instances", obj_powerup_speed_text)
figure_powerup = instance_create_layer(other.x, other.y, "Instances", obj_powerup_speed_figure)






instance_destroy(other)

part_emitter_region(global.sistema_particulas, global.emissor_particulas, other.x, other.x, other.y, other.y, ps_shape_line, ps_distr_gaussian)
part_emitter_burst(global.sistema_particulas, global.emissor_particulas,global.particula_powerup, 50)
