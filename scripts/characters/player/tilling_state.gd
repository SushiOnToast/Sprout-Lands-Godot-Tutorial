extends NodeState

@export var player: Player
@export var animated_sprite_2d: AnimatedSprite2D


func _on_process(_delta : float) -> void:
	pass
	

func _on_physics_process(_delta : float) -> void:
	pass
	
	

func _on_next_transitions() -> void:
	if !animated_sprite_2d.is_playing():
		transition.emit("Idle")


func _on_enter() -> void:
	player.direction = GameInputEvent.movement_input()
	player.anim_direction = player.get_animation_direction(player.direction)
	animated_sprite_2d.play("tilling_%s" % player.anim_direction)


func _on_exit() -> void:
	animated_sprite_2d.stop()
