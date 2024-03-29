extends Node2D

@onready var wind_area = $WindArea

const MAX_CHANGE_CHANGE : int = 100


func _on_area_2d_body_entered(body):
	print("Body: ", body)


func _ready():
	#wind_area.gravity_direction(1, 0)
	print("ww", wind_area.gravity_direction)
	wind_area.gravity_direction.x = 1
	wind_area.gravity_direction.y = -1
	print("ww", wind_area.gravity_direction)


func _process(delta):
	pass
