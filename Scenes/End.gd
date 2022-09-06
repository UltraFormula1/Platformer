extends Control


func _ready():
	SoundPlayer.change_music("finish")


func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/Title.tscn")
