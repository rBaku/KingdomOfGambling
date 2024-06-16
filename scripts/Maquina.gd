extends Node2D

@export var pool: Array[Pool] = []

var state = ROLLBACK
enum {ROLL,STOP,ROLLBACK}
var rollDuration = 3
var rollBackDuration =0.5

func _process(delta):		

	
	match state:
		ROLLBACK:
			if Global.coins >= 15 and state != ROLL:
				Global.coins-=15
				state = ROLL
		ROLL:
			
			rollDuration -= delta
			if rollDuration <= 0:
				state = ROLLBACK
				Global.tower_qty += 1
				rollDuration = 3
				
	
#https://github.com/brwxisme/SlotMachineTutorial/blob/main/Scripts/Reel.gd
