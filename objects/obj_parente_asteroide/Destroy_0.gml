var chance_powerup = irandom(4)
if chance_powerup == 4 {
	global.actual_powerup_instance = instance_create_layer(x, y, "Instances", obj_parente_powerup)
}