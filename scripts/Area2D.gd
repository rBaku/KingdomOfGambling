extends Area2D

@export var speed : float = 400.0
var velocity:Vector2
func _process(delta):
	position += velocity * delta

func set_velocity(direction):
	velocity = direction
