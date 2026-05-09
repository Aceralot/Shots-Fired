extends Label

signal scored


func _on_bullet_entered_scored(score : int) -> void:
	text = "Score:" + str(score)
	

