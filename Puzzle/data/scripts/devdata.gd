extends Control


func _process(_delta):
	if Input.is_action_just_released("open_devdata"):
		if visible == true:
			visible = false
		else:
			if visible == false:
				visible = true
	
	if Input.is_action_just_released("game_enter_fullscreeen"):
		OS.window_fullscreen = !OS.window_fullscreen
	
	$Label.text = str(get_node("../player_1").position.x)
	$Label2.text = str(get_node("../player_1").position.y)
	
	$Label3.text = str(get_node("../player_2").position.x)
	$Label4.text = str(get_node("../player_2").position.y)
