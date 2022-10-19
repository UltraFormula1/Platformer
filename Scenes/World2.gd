extends Node2D

func _ready():
	SoundPlayer.change_music("main2")
	GameStats.current_spawn = null
	GameStats.reset_timer()

func _process(delta):
	pass
	if Input.is_action_just_pressed("reset"):
		GameStats.reset()
	$CanvasLayer/Control/Label2.text = GameStats.get_time()
	if Input.is_action_just_pressed("menu"):
		get_tree().change_scene("res://Scenes/Title.tscn")
