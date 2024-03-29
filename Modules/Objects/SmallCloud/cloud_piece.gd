extends RigidBody2D

@onready var cloud = $CloudSprite

var collision_count : int = 0
var tween

var white = Color(1, 1, 1, 1)
var gray = Color(0.4, 0.4, 0.4, 1)

var timer_ligher : bool = false




func _on_body_entered(body):
	print("Blck")
	collision_count += 1
	change_color_darker(collision_count)
	


func _on_body_exited(body):
	#cloud.self_modulate = Color("white")
	collision_count -= 1
	if collision_count <= 0 and timer_ligher == false:
		time_before_lighter()


func change_color_darker(count : int):
	print("Count: ", count)
	# Get rid of last tween to clear for new one, may or may not avoid some errors? idk
	if tween != null:
		tween.kill()
	tween = get_tree().create_tween()
	tween.tween_property(cloud, "self_modulate", gray, 2)


func time_before_lighter():
	timer_ligher = true
	print("Hi")
	await get_tree().create_timer(2).timeout
	change_color_lighter(collision_count)
	print("BYES BB")


func change_color_lighter(count : int):
	print("Coun negative: ", count)
	if tween != null:
		tween.kill()
	tween = get_tree().create_tween()
	tween.tween_property(cloud, "self_modulate", white, 5)
	timer_ligher = false
