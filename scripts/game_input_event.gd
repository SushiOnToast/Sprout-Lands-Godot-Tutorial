class_name GameInputEvent

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
		
