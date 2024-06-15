extends Label

@export var scene:Node2D

var tower = preload("res://scenes/Tower.tscn")
var towertoplace = tower.instantiate()

func _process(delta):
	self.text = str(Global.tower_qty)

func _on_button_pressed():
	if Global.tower_qty > 0:
		Global.tower_qty -= 1
		scene.add_child(towertoplace)
	else:
		print("No towers...")
