extends Node2D

var paused = true

# Called when the node enters the scene tree for the first time.
func _ready():
	$UI/Play.show()
	paused = true
	get_tree().paused = true


func _input(_InputEvent):
	if Input.is_action_just_pressed("ui_accept") and paused:
		$UI/Play.hide()
		get_tree().paused = false
		paused = false
		$UI/ScoreP1.scoreP1 = 0
		$UI/ScoreP2.scoreP2 = 0
		$Ball.init()
	elif Input.is_action_just_pressed("ui_cancel") and not paused:
		$UI/Play.show()
		paused = true
		get_tree().paused = true
	elif Input.is_action_just_pressed("ui_cancel") and paused:
		$UI/Play.hide()
		paused = false
		get_tree().paused = false


func _on_wall_body_entered(body):
	if body == $Ball:
		$Ball.init()
	else:
		pass

func _on_wall_2_body_entered(body):
	if body == $Ball:
		$Ball.init()
	else:
		pass
