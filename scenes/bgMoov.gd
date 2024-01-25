extends Node

const CAM_START_POS := Vector2i(960, 540)
var speed : float = 5.0

func _process(delta):
	$Camera2D.position.x += speed
