extends RigidBody2D

func _ready():
	$AnimatedSprite.play("idle")


func _on_shroombor_body_entered(body):
	if body.get_name() == "Player":
		$AnimatedSprite.play("hit")
		$AudioStreamPlayer2D.play()
		


#func _on_AnimatedSprite_animation_finished(name):
#	if name == "hit":
#		$AnimatedSprite.play("idle")
