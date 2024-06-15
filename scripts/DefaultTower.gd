extends StaticBody2D


var bullet = preload("res://scenes/default_bullet.tscn")
var bullet_damage = 5
var path_name
var currentTargets = []
var curr



func _on_tower_body_entered(body):
	if "Enemy" in body.name:
		var temArray = []
		currentTargets = get_node("Tower").get_overlapping_bodies()
		print(currentTargets)


func _on_tower_body_exited(body):
	pass # Replace with function body.
