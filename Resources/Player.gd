extends CharacterBody2D


const SPEED = 6000.0


func _physics_process(delta):
	var direction = Input.get_axis("ui_up", "ui_down")
	if direction :
		velocity.y = direction * SPEED * delta
	else:
		velocity.y = 0
	move_and_slide()
