extends Area2D


var player_1_in = false
var player_2_in = false


func _on_finish_area_body_entered(body):
	print("hi")
	if body.name == "player_1":
		player_1_in = true
		print("enter lol uwu p1")
	elif body.name == "player_2":
		player_2_in = true
		print("enter lol uwu p2")


func _on_finish_area_body_exited(body):
	print("hui")
	if body.name == "player_1":
		player_1_in = false
		print("exit lol uwu p1")
	elif body.name == "player_2":
		player_2_in = false
		print("exit lol uwu p2")
