extends Label

@export var scoreP1 := 0

func _process(_delta):
	text = "%s" % scoreP1

func _on_wall_2_body_entered(_body):
	scoreP1 += 1
