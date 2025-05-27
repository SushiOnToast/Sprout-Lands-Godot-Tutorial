class_name Player
extends CharacterBody2D

@export var current_tool: DataTypes.Tools = DataTypes.Tools.WaterCrops

var direction: Vector2 = Vector2.DOWN
var anim_direction = "down"

func get_animation_direction(direction) -> String:
	if direction == Vector2.UP:
		anim_direction = "up"
	elif direction == Vector2.DOWN:
		anim_direction = "down"
	elif direction == Vector2.LEFT:
		anim_direction = "left"
	elif direction == Vector2.RIGHT:
		anim_direction = "right"
		
	return anim_direction
