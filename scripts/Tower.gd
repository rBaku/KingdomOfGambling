extends Area2D

# Exported variables
@export var fire_rate : float = 1.0
@export var bullet_scene : PackedScene
@export var detection_range : float = 100.0
@export var placed = false
@export var SPEED = 700

# Variables internas
var target : Node2D = null
var targets := []
var velocity = Vector2()
var mouse_position = null

func _ready():
	$Timer.wait_time = fire_rate
	$Timer.connect("timeout", Callable(self, "_on_Timer_timeout"))
	$Timer.start()
	connect("body_entered", Callable(self, "_on_Area2D_body_entered"))
	connect("body_exited", Callable(self, "_on_Area2D_body_exited"))
	$CollisionShape2D.shape.radius = detection_range

func _on_Area2D_body_entered(body):
	if body.is_in_group("targets"):
		targets.append(body)
		if targets != []: target = targets[0]

func _on_Area2D_body_exited(body):
	targets.erase(body)
	if targets != []: target = targets[0]
	if targets == []: target = null

func _on_Timer_timeout():
	if target:
		fire_bullet(target)

func fire_bullet(target):
	var bullet = bullet_scene.instantiate()
	bullet.position = global_position
	get_parent().add_child(bullet)
	
	var direction = (target.global_position - global_position).normalized()
	bullet.set_velocity(direction * bullet.speed)

func _physics_process(delta):
	if placed == false:
		mouse_position = get_global_mouse_position()
		var vec_dif = (mouse_position - self.position)
		if sqrt(vec_dif.x ** 2 + vec_dif.y ** 2) > 15:
			velocity = Vector2(0, 0)
			var direction_tower = (mouse_position - self.position).normalized()
			velocity = (direction_tower * SPEED)
			position += velocity * delta
		if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
			placed = true
