extends Control

@onready var audio2 = $AudioStreamPlayer


func _on_start_pressed() -> void:
	AudioManager.get_node("click").play()
	get_tree().change_scene_to_file("res://Scenes/L2.tscn")
	

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Settings.tscn")
