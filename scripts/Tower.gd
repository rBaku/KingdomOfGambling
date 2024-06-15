extends Area2D

# Exported variables
@export var fire_rate : float = 1.0
@export var bullet_scene : PackedScene
@export var detection_range : float = 100.0
# Variables internas
var target : Node2D = null

func _ready():
	$Timer.wait_time = fire_rate
	$Timer.connect("timeout", Callable(self, "_on_Timer_timeout"))
	$Timer.start()
	connect("body_entered", Callable(self, "_on_Area2D_body_entered"))
	connect("body_exited", Callable(self, "_on_Area2D_body_exited"))
	$CollisionShape2D.shape.radius = detection_range

func _on_Area2D_body_entered(body):
	if body.is_in_group("targets"):
		target = body

func _on_Area2D_body_exited(body):
	if body == target:
		target = null

func _on_Timer_timeout():
	if target:
		fire_bullet(target)

func fire_bullet(target):
	var bullet = bullet_scene.instantiate()
	bullet.position = global_position
	get_parent().add_child(bullet)
	
	var direction = (target.global_position - global_position).normalized()
	bullet.set_velocity(direction * bullet.speed)
