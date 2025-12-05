extends Area2D
class_name _XP

signal update_xp

func _ready() -> void:
	$AnimationPlayer.play("bounce")

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		self.queue_free()
		update_xp.emit(1)
