draw_self()
gpu_set_fog(true, color_damage, 0, 0)
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, alpha_damage)
gpu_set_fog(false, color_damage, 0, 0)