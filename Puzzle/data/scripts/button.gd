extends RigidBody2D


export var object_type = "button"

var is_pressed = false
var doing = "up"

func _physics_process(_delta):
	var contact = false
	for body in get_colliding_bodies():
		if body.name.begins_with("player_"):
			contact = true
			if doing == "up":
				$press_animation.current_animation = "down"
				doing = "going down"
	is_pressed = contact
	if doing == "down" and !is_pressed:
		$press_animation.current_animation = "up"
		doing = "going up"

func _on_press_animation_animation_finished(anim_name):
	if anim_name == "down":
		if is_pressed:
			doing = "down"
		else:
			$press_animation.current_animation = "up"
			doing = "going up"
	elif anim_name == "up":
		doing = "up"
