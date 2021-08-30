extends Node2D


func _process(_delta):
	if Input.is_action_just_released("game_enter_fullscreeen"):
		OS.window_fullscreen = !OS.window_fullscreen
