extends CharacterBody2D

var speed: float = 10
var health:= 300
var damage:= 50
var coin:=20
func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)	
	if get_parent().get_progress_ratio() == 1:
		queue_free()

func _physics_process(delta):
	if Input.is_key_pressed(KEY_ENTER):
		queue_free()
