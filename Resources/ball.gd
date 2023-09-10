extends CharacterBody2D

var rng = RandomNumberGenerator.new()


#var velocity = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	var x = rng.randf_range(-100,100)
	var y = rng.randf_range(-100,100)
	velocity = Vector2(x, y)

func _physics_process(delta):
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())
