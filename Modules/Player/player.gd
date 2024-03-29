extends CharacterBody2D


var speed = 100
var jump_force = 200
var gravity : float = 10


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _physics_process(delta):
	# Check if player is NOT on the floor
	if not is_on_floor():
		velocity.y += gravity
		if velocity.y > 1000:
			velocity.y = 1000
	
	# Check left and right movement
	if Input.is_action_pressed("right"):
		velocity.x = speed
	elif Input.is_action_pressed("left"):
		velocity.x = -speed
	else:
		velocity.x = 0
	
	# Check Jump
	if Input.is_action_pressed("up"):
		if is_on_floor():
			velocity.y = -jump_force
	
	
	move_and_slide()
