extends CanvasLayer

var total_xp = 0

func update_xp(xp):
	total_xp += xp
	$xpLabel.text = "XP: " + str(total_xp)
