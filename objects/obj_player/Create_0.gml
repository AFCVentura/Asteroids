var_velocidade = 3
var_direcao = 0
vida_player = 5
spd = speed
tempo_w = 0
tempo_s = 0
tempo_a = 0
tempo_d = 0
var_bullet_inst = 0
spaceship_speed = speed
color_damage = c_red
alpha_damage = 0


figure_powerup = 0
text_powerup = 0

// Asteróide mais próximo e distância dele 
closest_distance_from_player = -1
closest_instance_from_player = 0

// Ângulo entre a nave e o asteróide mais próximo
angle_spaceship_asteroid = -1

#region Lista de Powerups

map_pu_doubleshoot = ds_map_create()
map_pu_heavy = ds_map_create()
map_pu_sniper = ds_map_create()
map_pu_speed = ds_map_create()
map_pu_tripleshoot = ds_map_create()
map_pu_original = ds_map_create()

map_pu_doubleshoot[? "SpritePowerup"] = undefined
map_pu_heavy[? "SpritePowerup"] = undefined
map_pu_sniper[? "SpritePowerup"] = undefined
map_pu_speed[? "SpritePowerup"] = undefined
map_pu_tripleshoot[? "SpritePowerup"] = undefined


map_pu_doubleshoot[? "SpriteIdle"] = undefined
map_pu_heavy[? "SpriteIdle"] = undefined
map_pu_sniper[? "SpriteIdle"] = undefined
map_pu_speed[? "SpriteIdle"] = undefined
map_pu_tripleshoot[? "SpriteIdle"] = undefined


map_pu_doubleshoot[? "SpriteMoving"] = undefined
map_pu_heavy[? "SpriteMoving"] = undefined
map_pu_sniper[? "SpriteMoving"] = undefined
map_pu_speed[? "SpriteMoving"] = undefined 
map_pu_tripleshoot[? "SpriteMoving"] = undefined


map_pu_doubleshoot[? "Speed"] = 3
map_pu_heavy[? "Speed"] = 3
map_pu_sniper[? "Speed"] = 3
map_pu_speed[? "Speed"] = 6
map_pu_tripleshoot[? "Speed"] = 3


map_pu_doubleshoot[? "Health"] = 3
map_pu_heavy[? "Health"] = 3
map_pu_sniper[? "Health"] = 3
map_pu_speed[? "Health"] = 3
map_pu_tripleshoot[? "Health"] = 3


map_pu_doubleshoot[? "Shield"] = 1
map_pu_heavy[? "Shield"] = 10
map_pu_sniper[? "Shield"] = 1
map_pu_speed[? "Shield"] = 1
map_pu_tripleshoot[? "Shield"] = 1



#endregion

// Powerup atual
actual_powerup = undefined