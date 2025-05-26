class_name GameInputEvent

static var anim_direction = "down"

static func movement_input() -> Vector2:
	
	var direction = Vector2(
		Input.get_axis("walk_left", "walk_right"),
		Input.get_axis("walk_up", "walk_down")
	)

	if direction != Vector2.ZERO:
		direction = direction.normalized()
	
	return direction
	
static func is_movement_input(direction) -> bool:
	if direction == Vector2.ZERO:
		return false
	else:
		return true
		
static func get_animation_direction(direction) -> String:
	if direction == Vector2.UP:
		anim_direction = "up"
	elif direction == Vector2.DOWN:
		anim_direction = "down"
	elif direction == Vector2.LEFT:
		anim_direction = "left"
	elif direction == Vector2.RIGHT:
		anim_direction = "right"
		
	return anim_direction
		
