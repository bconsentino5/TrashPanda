extends CharacterBody2D

func left_animate():
	#print("left")
	$AnimatedSprite2D.animation = "move"
	$AnimatedSprite2D.flip_h = true
	$AnimatedSprite2D.play()

func right_animate():
	#print("right")
	$AnimatedSprite2D.animation = "move"
	$AnimatedSprite2D.flip_h = false
	$AnimatedSprite2D.play()
	
func jump_animate():
	$AnimatedSprite2D.animation = "jump"
	$AnimatedSprite2D.play()
	
func stop_animate():
	#print("stop")
	$AnimatedSprite2D.stop()
