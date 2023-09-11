extends CharacterBody2D

var rng = RandomNumberGenerator.new()
@export var speed := 100

#var velocity = 0

# Called when the node enters the scene tree for the first time.
func init():
	var x = rng.randf_range(-1,1)
	var y = rng.randf_range(-1,1)
	position.x = 0
	position.y = 0
	velocity = Vector2(x, y) * speed

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
