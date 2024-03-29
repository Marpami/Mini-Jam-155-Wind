extends Camera2D


const MOVE_SPEED = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("left"):
		global_position += Vector2.LEFT * delta * MOVE_SPEED
	
	if Input.is_action_pressed("right"):
		global_position += Vector2.RIGHT * delta * MOVE_SPEED
	
	if Input.is_action_pressed("up"):
		global_position += Vector2.UP * delta * MOVE_SPEED
	
	if Input.is_action_pressed("down"):
		global_position += Vector2.DOWN * delta * MOVE_SPEED
