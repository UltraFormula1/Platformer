extends Control


func _ready():
	SoundPlayer.change_music("finish")
	SoundPlayer.play_sound_effect("dialogue 3")


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Title.tscn")
