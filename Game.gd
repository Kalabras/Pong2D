extends Node2D


var paused = true
var diff = 0
@onready var select = get_node("Select")
@onready var diffs = get_node("Diff")
@onready var pause = get_node("Pause")

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
		select.play()
		$Ball.init()
	elif Input.is_action_just_pressed("ui_cancel") and not paused:
		$UI/Play.show()
		pause.play()
		paused = true
		get_tree().paused = true
	elif Input.is_action_just_pressed("ui_cancel") and paused:
		$UI/Play.hide()
		select.play()
		paused = false
		get_tree().paused = false
	elif paused:
		diff += Input.get_axis("ui_up", "ui_down")
		if diff == 0:
			get_node("/root/Arena/Ball").speed = 150
			get_node("/root/Arena/Player2").SPEED = 4000
			get_node("/root/Arena/UI/Play/Pointer").position = Vector2(50,25)
			diffs.play()
			$Ball.init()
		elif diff == 1:
			get_node("/root/Arena/Ball").speed = 250
			get_node("/root/Arena/Player2").SPEED = 6000
			get_node("/root/Arena/UI/Play/Pointer").position = Vector2(78,52)
			diffs.play()
			$Ball.init()
		elif diff == 2:
			get_node("/root/Arena/Ball").speed = 350
			get_node("/root/Arena/Player2").SPEED = 8000
			get_node("/root/Arena/UI/Play/Pointer").position = Vector2(54,79)
			diffs.play()
			$Ball.init()
		if Input.is_action_just_pressed("easy"):
			diff = 0
			diffs.play()
		elif Input.is_action_just_pressed("mid"):
			diff = 1
			diffs.play()
		elif Input.is_action_just_pressed("hard"):
			diff = 2
			diffs.play()



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
