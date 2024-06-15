extends Area2D

@export var speed : float = 400.0
var target : Node2D = null
var velocity:Vector2

signal bullet_hit 

func _process(delta):
	position += velocity * delta

func set_velocity(direction):
	velocity = direction

func _on_body_entered(body):
	if body.is_in_group("targets"):
		self.queue_free()
		body.health -= 20
		if body.health <= 0:
			Global.coins += 10
			body.queue_free()
			print("slime died")
			

