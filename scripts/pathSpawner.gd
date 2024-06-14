extends Node2D

@export var spawns: Array[Spawn_info] = []

var enemySpawns
var newEnemy
var counter
var enemySpawn
var time = 0

func _on_timer_timeout():
	enemySpawns = spawns
	time += 1
	for enemy in enemySpawns:
		if time >= enemy.timeStart and time <=  enemy.timeEnd:
			if enemy.spawnDelayCounter < enemy.enemySpawnDelay:
				enemy.spawnDelayCounter += 1
			else:
				enemy.spawnDelayCounter = 0
				newEnemy = enemy.enemy
				counter = 0
				while counter < enemy.enemyNum:
					enemySpawn = newEnemy.instantiate()
					self.add_child(enemySpawn)
					counter += 1
