#region Sistema de Particulas do asteróide
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
#endregion

#region Sistema de Partículas do Powerup
global.particula_powerup = part_type_create();


part_type_shape(global.particula_powerup, pt_shape_pixel)  // definindo o tipo de particula (nesse caso, pixel)
part_type_scale(global.particula_powerup, 1, 1);  // definindo o padrão de escala 1:1 pra usar depois
part_type_size(global.particula_powerup, 5, 9, -1, 2)  // defininindo os tamanhos possíveis para a particula
part_type_color1(global.particula_powerup, #de9e41)  // definindo as cores da particula progressivamente
part_type_alpha3(global.particula_powerup, 0.5, 1, 0.5)  // definindo a transparência gradual
part_type_speed(global.particula_powerup, 10, 12, -1, 0)  // definindo velocidade
part_type_direction(global.particula_powerup, 0, 359, 0, 0)  // definindo direção
part_type_orientation(global.particula_powerup, 0, 359, 0, 0, true)  // definindo angulação da particula
part_type_blend(global.particula_powerup, false)  // sobreposição de luz
part_type_life(global.particula_powerup, 120, 130)  // tempo de vida da particula
#endregion

#region Sistema de Particulas do detrito
global.particula_detrito = part_type_create();


part_type_shape(global.particula_detrito, pt_shape_pixel)  // definindo o tipo de particula (nesse caso, pixel)
part_type_scale(global.particula_detrito, 1, 1);  // definindo o padrão de escala 1:1 pra usar depois
part_type_size(global.particula_detrito, 2, 4, -0.2, 0.03)  // defininindo os tamanhos possíveis para a particula
part_type_color1(global.particula_detrito, #585783)  // definindo as cores da particula progressivamente
part_type_alpha3(global.particula_detrito, 0.7, 1, 0.7)  // definindo a transparência gradual
part_type_speed(global.particula_detrito, 12, 14, -1.5, 0)  // definindo velocidade
part_type_direction(global.particula_detrito, 0, 359, 0, 0)  // definindo direção
part_type_orientation(global.particula_detrito, 0, 359, 0, 0, false)  // definindo angulação da particula
part_type_blend(global.particula_detrito, false)  // sobreposição de luz
part_type_life(global.particula_detrito, 90, 100)  // tempo de vida da particula
#endregion

