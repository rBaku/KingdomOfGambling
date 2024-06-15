extends CharacterBody2D

var speed: float = 35
var health:= 100

func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)	
	if get_parent().get_progress_ratio() == 1:
		queue_free()

func _physics_process(delta):
	if Input.is_key_pressed(KEY_ENTER):
		queue_free()
