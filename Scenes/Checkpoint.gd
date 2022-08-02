extends Area2D


func _ready():
	$AnimationPlayer.play("Checkpoint")

func _process(delta):
	if GameStats.get_spawn() != self:
		$AnimationPlayer.play("checkpoint")



func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		GameStats.set_spawn(self)
		$AnimationPlayer.play("Saved")
