extends CharacterBody2D

func _physics_process(delta: float) -> void:
	var direction = Input.get_vector( "left", "right", "ui_up", "ui_down" )
	velocity = direction * 600
	move_and_slide()

