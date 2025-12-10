extends Control


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/L1.tscn")

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Settings.tscn")
