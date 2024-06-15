extends CharacterBody2D

var speed: float = 100
var health:= 200



func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)	
	if get_parent().get_progress_ratio() == 1:
		queue_free()

func _physics_process(delta):
	if Input.is_key_pressed(KEY_ENTER):
		queue_free()
