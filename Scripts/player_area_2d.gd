extends Area2D
class_name Bullet

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var score = 0
const SPEED = 1000
const RANGE = 1200
signal scored

var direction = Vector2.RIGHT.rotated( rotation )
var travelled_distance = 0

func _process(delta: float) -> void:
	translate( direction * SPEED * delta)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position += direction * SPEED * delta
	
	travelled_distance += SPEED * delta
	if travelled_distance > RANGE:
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	queue_free()
	if body.has_method( "take_damage" ):
		body.take_damage
	pass # Replace with function body.





func _on_area_entered(area: Area2D) -> void:
	score += 1
	scored.emit()
