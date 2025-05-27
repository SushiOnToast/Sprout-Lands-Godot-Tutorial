extends NodeState

@export var player: Player
@export var animated_sprite_2d: AnimatedSprite2D


func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	player.direction = GameInputEvent.movement_input()
	player.anim_direction = player.get_animation_direction(player.direction)
	animated_sprite_2d.play("idle_%s" % player.anim_direction)
	
	

func _on_next_transitions() -> void:
	var moving = GameInputEvent.is_movement_input(player.direction)
	if moving:
		transition.emit("Walk")
		
	if GameInputEvent.use_tool():
		if player.current_tool == DataTypes.Tools.AxeWood:
			transition.emit("Chopping")
		elif player.current_tool == DataTypes.Tools.TillGround:
			transition.emit("Tilling")
		elif player.current_tool == DataTypes.Tools.WaterCrops:
			transition.emit("Watering")


func _on_enter() -> void:
	pass


func _on_exit() -> void:
	animated_sprite_2d.stop()
