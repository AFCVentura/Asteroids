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

ds_map_add(map_pu_doubleshoot, "SpriteIdle", spr_spaceship_idle_doubleshoot)
ds_map_add(map_pu_heavy, "SpriteIdle", spr_spaceship_idle_heavy)
ds_map_add(map_pu_sniper, "SpriteIdle", spr_spaceship_idle_sniper)
ds_map_add(map_pu_speed, "SpriteIdle", spr_spaceship_idle_speed)
ds_map_add(map_pu_tripleshoot, "SpriteIdle", spr_spaceship_idle_tripleshoot)
ds_map_add(map_pu_original, "SpriteIdle", spr_spaceship_idle_original)

ds_map_add(map_pu_doubleshoot, "SpriteMoving", spr_spaceship_moving_doubleshoot)
ds_map_add(map_pu_heavy, "SpriteMoving", spr_spaceship_moving_heavy)
ds_map_add(map_pu_sniper, "SpriteMoving", spr_spaceship_moving_sniper)
ds_map_add(map_pu_speed, "SpriteMoving", spr_spaceship_moving_speed)
ds_map_add(map_pu_tripleshoot, "SpriteMoving", spr_spaceship_moving_tripleshoot)
ds_map_add(map_pu_original, "SpriteMoving", spr_spaceship_moving_original)

ds_map_add(map_pu_doubleshoot, "Speed", 3)
ds_map_add(map_pu_heavy, "Speed", 3)
ds_map_add(map_pu_sniper, "Speed", 3)
ds_map_add(map_pu_speed, "Speed", 6)
ds_map_add(map_pu_tripleshoot, "Speed", 3)
ds_map_add(map_pu_original, "Speed", 3)

ds_map_add(map_pu_doubleshoot, "Health", 3)
ds_map_add(map_pu_heavy, "Health", 3)
ds_map_add(map_pu_sniper, "Health", 3)
ds_map_add(map_pu_speed, "Health", 3)
ds_map_add(map_pu_tripleshoot, "Health", 3)
ds_map_add(map_pu_original, "Health", 3)

ds_map_add(map_pu_doubleshoot, "Shield", 1)
ds_map_add(map_pu_heavy, "Shield", 10)
ds_map_add(map_pu_sniper, "Shield", 1)
ds_map_add(map_pu_speed, "Shield", 1)
ds_map_add(map_pu_tripleshoot, "Shield", 1)
ds_map_add(map_pu_original, "Shield", 1)

list_powerups = ds_list_create()
list_powerups = ds_list_add(list_powerups, map_pu_doubleshoot, map_pu_heavy, map_pu_sniper, map_pu_speed, map_pu_tripleshoot, map_pu_original)
#endregion

// Powerup atual
actual_powerup = noone