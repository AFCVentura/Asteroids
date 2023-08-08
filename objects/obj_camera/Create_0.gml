/// @description Configurando Janela

// Defininido previamente como Full HD 16:9

// Resolução do game
resolution_width = 1920
resolution_height = 1080

// Valor da divisão para fazer a câmera
resolution_scale = 2

// Tamanho da câmera
global.camera_width = resolution_width / resolution_scale
global.camera_height = resolution_height / resolution_scale

// Criando variável para a instância do player
view_target = obj_player

// Criando variável para velocidade da câmera
view_speed = 0.1
/* Restante das configurações de suavização da câmera no Etapa Final*/

/* Setando para a câmera seguir o player no evento Etapa Final */

// Tamanho da janela
window_set_size(global.camera_width * resolution_scale, global.camera_height * resolution_scale)
window_center()

// Tamanho da Application Surface (inicialmente igual ao da janela)
surface_resize(application_surface, global.camera_width * resolution_scale, global.camera_height * resolution_scale)

/* Setando o View Port no evento de início da cena */
/* Setando a câmera no evento de etapa final*/

// Setando o tamanho do GUI 
display_set_gui_size(global.camera_width, global.camera_height)

zoom_in_x = 0
zoom_in_y = 0
zoom_out_x = 0
zoom_out_y = 0

global.camera_width_withzoom = global.camera_width
global.camera_height_withzoom = global.camera_height