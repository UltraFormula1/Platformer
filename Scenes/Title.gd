extends Control


func _ready():
	SoundPlayer.change_music("menu")


func _on_Options_pressed():
	$AnimationPlayer.play("MoveToOptions")


func _on_Back_pressed():
	$AnimationPlayer.play("BackToMenu")


func _on_HSlider_value_changed(value):
	SoundPlayer.change_music_db(value)


func _on_SFX_value_changed(value):
	SoundPlayer.change_sound_db(value)
