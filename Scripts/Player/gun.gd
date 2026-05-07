extends Node2D



func shoot():
	if Input.is_action_pressed( "shoot" ):
		const BULLET = preload("res://Objects/Entity/Bullet.tscn")
		var new_bullet = BULLET.instantiate()
		new_bullet.global_position = %ShootingPoint.global_position
		new_bullet.global_rotation = %ShootingPoint.global_rotation
		%ShootingPoint.add_child( new_bullet )
	else:
		pass
	

func _on_timeout() -> void:
	shoot()
