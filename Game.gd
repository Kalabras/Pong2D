extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_wall_body_entered(body):
	if body == $Ball:
		body.position.x = 0
		body.position.y = 0
		body._ready()
	else:
		pass

func _on_wall_2_body_entered(body):
	if body == $Ball:
		body.position.x = 0
		body.position.y = 0
		body._ready()
	else:
		pass
