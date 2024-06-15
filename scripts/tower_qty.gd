extends Label

func _process(delta):
	self.text = str(Global.tower_qty)


func _on_button_pressed():
	if Global.tower_qty > 0:
		Global.tower_qty -= 1
	else:
		print("No towers...")
