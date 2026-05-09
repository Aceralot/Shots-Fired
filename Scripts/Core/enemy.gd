extends CharacterBody2D
class_name enemy

signal scored
var score = 0

const SPEED = 30
var player : Node2D

func _ready() -> void:
	$AnimatedSprite2D.play("Idle")


func _physics_process(delta: float) -> void:
	#where is the player
	var direction = (player.global_position - global_position).normalized()
	velocity = direction * SPEED
	
	move_and_slide()

func _on_area_entered(area: Area2D) -> void:
	
	if area is Bullet:
		$CollisionShape2D.queue_free()
		$Hitbox.queue_free()
		$AnimatedSprite2D.play("Destroy")
		await $AnimatedSprite2D.animation_finished
		queue_free()
		
		
		

func _process(delta: float) -> void:
	look_at( player.global_position )



		
		
		