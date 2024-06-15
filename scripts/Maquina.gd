extends Node2D
var state 
enum {ROLL,STOP,ROLLBACK}
var rollDuration = 3
var rollBackDuration =0.5
@export var reelID:int
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.coins >= 25:
		state = "ROLL"
	
	match state:
		ROLLBACK:
			rollBackDuration -= delta
			if rollBackDuration <= 0:
				state = ROLL
		ROLL:
			
			rollDuration -= delta
			if rollDuration <= 0:
				state = STOP
		STOP:
			pass
	
#https://github.com/brwxisme/SlotMachineTutorial/blob/main/Scripts/Reel.gd
