extends Label

@export var scoreP2 := 0

func _process(_delta):
	text = "%s" % scoreP2

func _on_wall_body_entered(_body):
	scoreP2 += 1
	get_parent().get_node("/root/Arena/Pointwon").play()
