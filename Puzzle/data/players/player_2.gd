extends RigidBody2D


export var object_type = "player"


func _integrate_forces(state):
	if Input.is_action_just_pressed("player_two_jump"):
		state.apply_central_impulse(Vector2(0, -500))
	
	if Input.is_action_pressed("player_two_left"):
		state.apply_central_impulse(Vector2(-30, 0))
	
	if Input.is_action_pressed("player_two_right"):
		state.apply_central_impulse(Vector2(30, 0))
	
	if Input.is_action_pressed("player_two_rotate_left"):
		state.apply_torque_impulse(-50)
	
	if Input.is_action_pressed("player_two_rotate_right"):
		state.apply_torque_impulse(50)
	
	if position.y > 500 or Input.is_action_just_released("player_two_reset"):
		state.transform = Transform2D(0, Vector2(48,0))
		state.linear_velocity = Vector2(0,0)
		state.angular_velocity = 0
