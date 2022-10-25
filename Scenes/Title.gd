extends Control


func _ready():
	SoundPlayer.change_music("menu")
	$MarginContainer2/CenterContainer/HBoxContainer/SFX.value = db2linear(SoundPlayer.sound_db)
	$HSlider.value = db2linear(SoundPlayer.music_db)
	#$CheckBox.value = checkbox_toggled(button_pressed)

func _on_Options_pressed():
	$AnimationPlayer.play("MoveToOptions")
	SoundPlayer.play_sound_effect("menu")


func _on_Back_pressed():
	$AnimationPlayer.play("BackToMenu")
	SoundPlayer.play_sound_effect("menu")


func _on_HSlider_value_changed(value):
	SoundPlayer.change_music_db(value)


func _on_SFX_value_changed(value):
	SoundPlayer.change_sound_db(value)


func _on_CheckBox_toggled(button_pressed):
	OS.window_fullscreen = !OS.window_fullscreen
	SoundPlayer.play_sound_effect("menu")


func _on_Start_pressed():
	get_tree().change_scene("res://Scenes/Cutscene1.tscn")
	SoundPlayer.play_sound_effect("menu")


func _on_Exit_pressed():
	SoundPlayer.play_sound_effect("menu")
	get_tree().quit()
