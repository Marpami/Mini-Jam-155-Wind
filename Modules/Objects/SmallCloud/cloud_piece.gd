extends RigidBody2D

@onready var cloud = $CloudSprite

var collision_count : int = 0
var tween

var white = Color(1, 1, 1, 1)
var gray = Color(0.4, 0.4, 0.4, 1)


func _ready():
	# Make a new tween
	pass
	
	
	#tween.start()
	

func _process(delta):
	pass
	#print("Count: ", collision_count)



func _on_body_entered(body):
	print("Blck")
	collision_count += 1
	change_color_darker(collision_count)
	# Instant color change
	#cloud.self_modulate = Color.hex(0x999999ff)
	


func _on_body_exited(body):
	#cloud.self_modulate = Color("white")
	collision_count -= 1
	change_color_lighter(collision_count)
	#tween.tween_property(cloud, "self_modulate", white, 2)


func change_color_darker(count : int):
	print("Count: ", count)
	tween = get_tree().create_tween()
	tween.tween_property(cloud, "self_modulate", gray, 2)
	#tween.queue_free()

func change_color_lighter(count : int):
	print("Coun negative: ", count)
	tween = get_tree().create_tween()
	tween.tween_property(cloud, "self_modulate", white, 2)
