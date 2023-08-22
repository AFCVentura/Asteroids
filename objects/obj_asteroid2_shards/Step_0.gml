image_angle += var_rotacao  // Rotação do Sprite

#region teletransporte de uma sala até a outra
var _border = 50
// Reaparecer do outro lado da câmera
if y < global.camera_y - _border {
	y =  global.camera_y + global.camera_height + _border
}
if y > global.camera_y + global.camera_height + _border {
	y =  global.camera_y - _border
}
if x < global.camera_x - _border {
	x =  global.camera_x + global.camera_width + _border
}
if x > global.camera_x + global.camera_width + _border {
	x =  global.camera_x - _border
}
#endregion
