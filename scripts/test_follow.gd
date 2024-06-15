extends Sprite2D

@export var SPEED = 700
var velocity = Vector2()
var mouse_position = null

func _physics_process(delta):
	mouse_position = get_global_mouse_position()
	var vec_dif = (mouse_position - position)
	if sqrt(vec_dif.x ** 2 + vec_dif.y ** 2) > 10:
		velocity = Vector2(0, 0)
		var direction = (mouse_position - position).normalized()
		velocity = (direction * SPEED)
		position += velocity * delta
