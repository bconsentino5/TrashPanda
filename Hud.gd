extends CanvasLayer

var total_xp = 0

func update_xp(xp):
	total_xp += xp
	$xpLabel.text = "XP: " + str(total_xp)
	if total_xp == 7:
		total_xp = 0
		if get_tree().current_scene.name == "L2":
			get_tree().change_scene_to_file("res://Scenes/L1.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/GameOver.tscn")
