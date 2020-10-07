extends KinematicBody2D

var direction = Vector2(0,0)

func _process(delta):
	if(Input.is_action_just_pressed("ui_up")):
		direction = Vector2(0,-1)
		pass
	if(Input.is_action_just_pressed("ui_down")):
		direction = Vector2(0,1)
		pass
	if(Input.is_action_just_pressed("ui_right")):
		direction = Vector2(1,0)
		pass
	if(Input.is_action_just_pressed("ui_left")):
		direction = Vector2(-1,0)
		pass
	move_snake()
	pass

func move_snake():
	get_node("Sprite").position += direction
