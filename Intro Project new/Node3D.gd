extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("cam_rotate_left"):
		rotation.y +=1 * delta
	if Input.is_action_pressed("cam_rotate_right"):
		rotation.y -=1 * delta
	if Input.is_action_pressed("cam_up"):
		rotation.y -=1 * delta
		rotation.x -=0.3 * delta
	if Input.is_action_pressed("cam_down"):
		rotation.y +=1 * delta
		rotation.x +=0.3 * delta
