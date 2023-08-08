// Desativa efeitos de alpha (transparência)
gpu_set_blendenable(false)


// Todo este bloco de desenho está antes do bloco de pause pois há uma questão de frame que ficaria estranho
// se o game fosse despausado antes de desenhar (um frame sem nada)

// Desenhar a tela na hora que pausar
if pause {
	// Define que o alvo é a application surface
	surface_set_target(application_surface)
		// Se a superfície de pause existe, desenha ela
		if surface_exists(pauseSurface) {
			draw_surface(pauseSurface, 0, 0)
		}
		// Se ela não existe, cria ela e resgata as informações do buffer
		else {
			pauseSurface = surface_create(widthForPause, heightForPause)
			buffer_set_surface(pauseSurfaceBuffer, pauseSurface, 0)
		}
	surface_reset_target()
}




if keyboard_check_pressed(ord("P")) {
	
	// Se não está pausado
	if (!pause) {
		
		// Pause
		pause = true
		
		// Desativa todas as instâncias e o true serve para não desativar esta aqui em específico
		instance_deactivate_all(true)
		
		// Aqui é onde se deve desativar as animações animadas, se não fizer, vai ter um salto na animação
		
		// Cria uma superfície com a resolução exata da tela
		pauseSurface = surface_create(widthForPause, heightForPause)
		
		// Especifica que os próximos comandos de draw serão feitos nessa superfície
		surface_set_target(pauseSurface)
			// Desenha a application_surface na pauseSurface
			draw_surface(application_surface, 0, 0)
		// Finaliza a especificação de desenhar no pauseSurface
		surface_reset_target()
		
		// Superfícies podem mudar facilmente e portanto, se perderem, logo, é interessante fazer
		// um backup das informações em um buffer
		// Se o buffer existe, apaga
		if buffer_exists(pauseSurfaceBuffer) {
			buffer_delete(pauseSurfaceBuffer)
		}
		// Cria o buffer com o tamanho de largura * altura * 4 e alinhado a 1 byte (coisa de nerdola)
		pauseSurfaceBuffer = buffer_create(widthForPause * heightForPause * 4, buffer_fixed, 1)
		
		// Manda o buffer armazenar a superficie do pause
		buffer_get_surface(pauseSurfaceBuffer, pauseSurface, 0)
	}
	
	// Se está pausado
	if (pause) {
		// Despause
		pause = false
		
		// Reative as instâncias
		instance_activate_all()
		
		// Se a superfície existe, apague-a
		if surface_exists(pauseSurface) {
			surface_free(pauseSurface)
		}
		
		// Se o buffer existe, apague-o
		if buffer_exists(pauseSurfaceBuffer) {
			buffer_delete(pauseSurfaceBuffer)
		}
	}
}

// Reativa o alpha
gpu_set_blendenable(true)