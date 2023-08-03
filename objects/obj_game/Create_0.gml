/*SISTEMA DE PARTÍCULAS*/
global.sistema_particulas = part_system_create_layer("Assets_1", false);
global.particula_asteroide = part_type_create();
global.emissor_particulas = part_emitter_create(global.sistema_particulas);

part_type_shape(global.particula_asteroide, pt_shape_pixel)  // definindo o tipo de particula (nesse caso, pixel)
part_type_scale(global.particula_asteroide, 1, 1);  // definindo o padrão de escala 1:1 pra usar depois
part_type_size(global.particula_asteroide, 2, 6, -0.3, 0.05)  // defininindo os tamanhos possíveis para a particula
part_type_color1(global.particula_asteroide, #585783)  // definindo as cores da particula progressivamente
part_type_alpha3(global.particula_asteroide, 0.5, 1, 0.5)  // definindo a transparência gradual
part_type_speed(global.particula_asteroide, 15, 17, -2, 0)  // definindo velocidade
part_type_direction(global.particula_asteroide, 0, 359, 0, 0)  // definindo direção
part_type_orientation(global.particula_asteroide, 0, 359, 30, 10, false)  // definindo angulação da particula
part_type_blend(global.particula_asteroide, false)  // sobreposição de luz
part_type_life(global.particula_asteroide, 90, 100)  // tempo de vida_asteroid da particula
/*--------------------------*/


