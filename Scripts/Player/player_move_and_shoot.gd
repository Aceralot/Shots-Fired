extends CharacterBody2D


@export var SPEED = 300.0


func _process(delta: float) -> void:
	pass


func _physics_process(delta) -> void:
	var input_direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	    
	#INVERSION APPLIED HERE
	input_direction.y *= 1
	
	velocity = input_direction * SPEED
	move_and_slide()

	
