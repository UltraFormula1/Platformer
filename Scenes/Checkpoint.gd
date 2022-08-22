extends Area2D


func _ready():
	$AnimationPlayer.play("Checkpoint")

func _process(delta):
	if GameStats.get_spawn() != self:
		$AnimationPlayer.play("Checkpoint")



func _on_Area2D_body_entered(body):
	if body.is_in_group("Player") and $AnimationPlayer.get_current_animation() =="Checkpoint":
		GameStats.set_spawn(self)
		$AnimationPlayer.play("Saved")
		SoundPlayer.play_sound_effect("checkpoint")
