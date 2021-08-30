extends AnimationPlayer


func _on_animation_animation_finished(anim_name):
	current_animation = ""
	if anim_name == "start_game":
		var _useless = get_tree().change_scene("res://scenes/level_1.tscn")
	elif anim_name == "exit_game":
		get_tree().quit()


func _on_play_pressed():
	current_animation = "start_game"


func _on_exit_pressed():
	current_animation = "exit_game"
