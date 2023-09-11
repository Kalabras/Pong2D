extends CharacterBody2D

const SPEED = 4000.0

func _physics_process(delta):
	var ball = get_node("/root/Arena/Ball").get_global_position()
	velocity.y = position.direction_to(ball).y * SPEED * delta
	if position.x != -110:
		position.x = -110
	move_and_slide()
