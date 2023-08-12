if alarm[0] <= 0 {
	part_emitter_region(global.sistema_particulas, global.emissor_particulas, other.x, other.x, other.y, other.y, ps_shape_ellipse, ps_distr_gaussian)
	part_emitter_burst(global.sistema_particulas, global.emissor_particulas,global.particula_detrito, 15)
	instance_destroy(self)
}