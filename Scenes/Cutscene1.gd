extends Control


func _ready():
	SoundPlayer.change_music("cutscene 1")


func _on_Button_pressed():
	SoundPlayer.play_sound_effect("menu")
	get_tree().change_scene("res://Scenes/World.tscn")
