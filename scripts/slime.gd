extends CharacterBody2D

var speed: float = 35	 

func _process(delta):
	get_parent().set_progress(get_parent().get_progress() + speed*delta)	
	if get_parent().get_progress_ratio() == 1:
		queue_free()
		

func _physics_process(delta):
	Input.is_key_pressed(KEY_ENTER)

func _exit_tree():
	Global.coins += 10
