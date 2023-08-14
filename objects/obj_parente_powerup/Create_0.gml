var_rotacao = 0

// Usando o valor pra sortear um powerup
chosen_powerup = irandom_range(0, 4)

// Salva as variáveis do map desse powerup
if chosen_powerup == 0 {
	chosen_powerup_sprite = spr_powerup_doubleshoot
}
else if chosen_powerup == 1 {
	chosen_powerup_sprite = spr_powerup_heavy
}
else if chosen_powerup == 2 {
	chosen_powerup_sprite = spr_powerup_sniper
}
else if chosen_powerup == 3 {
	chosen_powerup_sprite = spr_powerup_speed
}
else if chosen_powerup == 4 {
	chosen_powerup_sprite = spr_powerup_tripleshoot
}
sprite_index = chosen_powerup_sprite

