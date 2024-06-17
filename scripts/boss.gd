extends CharacterBody2D
var speed: float = 200
var health:= 2000
var damage := 10000
var coin := 100000


func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)	
	if get_parent().get_progress_ratio() == 1:
		queue_free()

func _physics_process(delta):
	if Input.is_key_pressed(KEY_ENTER):
		queue_free()


func _on_tree_exited():
	Global.victoria = true
		