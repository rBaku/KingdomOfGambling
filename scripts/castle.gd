extends StaticBody2D

@export var vidaMaxima = 100

var vida: float

func _ready():
	vida = vidaMaxima
	
func recibirDaño(daño):
	vida -= daño
	if vida <= 0:
		self.queue_free()
		"se acaba el juego"	
	
