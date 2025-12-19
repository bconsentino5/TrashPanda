extends Area2D
class_name _XP

signal update_xp

@onready var sprite = $Sprite2D

var cheese = preload("res://Assets/cheese.png")
var candy = preload("res://Assets/CANDY.png")

func _ready() -> void:
	$AnimationPlayer.play("bounce")
	if get_tree().current_scene.name == "L2":
		sprite.texture = cheese

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		AudioManager.get_node("collect").play()
		self.queue_free()
		update_xp.emit(1)
		
	
