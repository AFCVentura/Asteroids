// Variável para a rotação natural da terra
rotacao_terra = 0

// Variável para a rotação da terra pelo movimento do player
rotacao_by_player = 0

var_player = obj_player
image_angle = var_player.x/60

rotacao_total = 0

distance = point_distance(x, y, var_player.x, var_player.y)
