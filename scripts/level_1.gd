extends Node2D


func _process(delta):
	if Global.victoria:
		get_tree().change_scene_to_file("res://scenes/interfaz/Victory.tscn")
