extends CharacterBody2D
class_name enemy

signal scored
var score = 0

const SPEED = 30
var player : Node2D

func _physics_process(delta: float) -> void:
	#where is the player
	var direction = (player.global_position - global_position).normalized()
	velocity = direction * SPEED
	move_and_slide()

func _on_area_entered(area: Area2D) -> void:
	if area is Bullet:
		queue_free()
		area.queue_free()



		
		
		