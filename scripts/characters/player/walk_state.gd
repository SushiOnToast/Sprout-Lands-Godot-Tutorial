extends NodeState

@export var player: Player
@export var animated_sprite_2d: AnimatedSprite2D

var speed:float = 100

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	player.direction = GameInputEvent.movement_input()
	player.anim_direction = player.get_animation_direction(player.direction)
	animated_sprite_2d.play("walk_%s" % player.anim_direction)
	
	player.velocity = player.direction * speed
	player.move_and_slide()
	

func _on_next_transitions() -> void:
	var moving = GameInputEvent.is_movement_input(player.direction)
	if !moving:
		transition.emit("Idle")


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	pass
