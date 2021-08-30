extends RigidBody2D


var is_pressed = "false"
var doing = "down"


export var object_type = "wall"


func _physics_process(_delta):
	if get_node("../button_1").is_pressed or get_node("../button_2").is_pressed:
		is_pressed = true
	elif !get_node("../button_1").is_pressed and !get_node("../button_2").is_pressed:
		is_pressed = false
	
	if is_pressed == false and position.y == -64:
		$animation.current_animation = "close"
	
	elif is_pressed == true and position.y == 0:
		$animation.current_animation = "open"

func _on_animation_animation_finished(_anim_name):
	$animation.current_animation = ""
