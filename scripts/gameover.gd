extends Node2D



func _on_retry_pressed():
	get_tree().change_scene_to_file("res://scenes/tutorial.tscn")
