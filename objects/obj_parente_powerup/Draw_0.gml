// sintaxe do sprite stacking

var_rotacao += 2

for (var i = 0; i < sprite_get_number(chosen_powerup_sprite); i++) {
	draw_sprite_ext(chosen_powerup_sprite, i, x, y - i, 1, 1, var_rotacao, c_white, 1)
}



// Para desenhar, basta imaginar o quadrado de frente e as camadas dele sendo as diferentes alturas