extends Area2D


func _ready():
	pass
func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		get_tree().change_scene("res://Scenes/cutscene2.tscn")
		SoundPlayer.play_sound_effect("end")
