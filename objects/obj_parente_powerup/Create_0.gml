var_rotacao = 0

// Vendo a quantidade de powerups


// Usando o valor pra sortear um powerup
chosen_powerup = irandom_range(0, 4)

// Salva as variáveis do map desse powerup
if chosen_powerup == 0 {
	chosen_powerup_sprite = spr_powerup_doubleshoot
	chosen_powerup_sprite_idle = spr_spaceship_idle_doubleshoot
	chosen_powerup_sprite_moving = spr_spaceship_moving_doubleshoot
}
else if chosen_powerup == 1 {
	chosen_powerup_sprite = spr_powerup_heavy
	chosen_powerup_sprite_idle = spr_spaceship_idle_heavy
	chosen_powerup_sprite_moving = spr_spaceship_moving_heavy
}
else if chosen_powerup == 2 {
	chosen_powerup_sprite = spr_powerup_sniper
	chosen_powerup_sprite_idle = spr_spaceship_idle_sniper
	chosen_powerup_sprite_moving = spr_spaceship_moving_sniper
}
else if chosen_powerup == 3 {
	chosen_powerup_sprite = spr_powerup_speed
	chosen_powerup_sprite_idle = spr_spaceship_idle_speed
	chosen_powerup_sprite_moving = spr_spaceship_moving_speed
}
else if chosen_powerup == 4 {
	chosen_powerup_sprite = spr_powerup_tripleshoot
	chosen_powerup_sprite_idle = spr_spaceship_idle_tripleshoot
	chosen_powerup_sprite_moving = spr_spaceship_moving_tripleshoot	
}


