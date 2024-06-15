extends Polygon2D

func _on_menu_button_pressed():
	if visible == true:
		visible = false
	else:
		visible = true
