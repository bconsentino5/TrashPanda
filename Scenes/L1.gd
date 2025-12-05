extends Node2D

@export var xp_scene: PackedScene


func _ready():
	make_xp(54, 186)
	make_xp(510, 14)
	make_xp(903, -188)
	make_xp(163, -430)
	make_xp(847, -602)
	make_xp(456, -983)
	
func make_xp(x, y):
	var candy = xp_scene.instantiate()
	candy.position = Vector2(x, y)
	# Connect to HUD (change the path to match your scene)
	candy.update_xp.connect($HUD.update_xp)
	add_child(candy)
