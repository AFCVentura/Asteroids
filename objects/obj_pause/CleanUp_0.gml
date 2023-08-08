if surface_exists(pauseSurface) {
	surface_free(pauseSurface)
}

if buffer_exists(pauseSurfaceBuffer) {
	buffer_delete(pauseSurfaceBuffer)
}