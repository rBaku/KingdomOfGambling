extends Area2D
@export var vidaMaxima = 10
var target : Node2D = null
var vida: float



func _ready():
	vida = vidaMaxima

func recibirDaño(daño):
	vida -= daño
	if vida <= 0:
		print("se acaba el juego")
		get_tree().change_scene_to_file("res://scenes/gameover.tscn")

func _on_body_entered(body):
	if body.is_in_group("targets"):
		recibirDaño(10)
