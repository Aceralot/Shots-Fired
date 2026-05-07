extends Node2D

@export var enemy_prefab : PackedScene
@export var target : CharacterBody2D



func _on_timeout() -> void:
	#spawn an enemy
	var enemy = enemy_prefab.instantiate()
	enemy.player = target
	add_child( enemy )
