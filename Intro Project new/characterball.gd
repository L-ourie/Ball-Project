extends RigidBody3D

var rolling_force=20
var jump_impulse = 0.7
func _ready():
	$Marker3D.top_level

func _physics_process(delta):
	var old_camera_pos = $Marker3D.global_transform.origin
	var ball_pos = global_transform.origin
	var new_camera_pos = lerp(old_camera_pos,ball_pos,0.5)
	$Marker3D.global_transform.origin = new_camera_pos
func _process(delta):
	if Input.is_action_pressed("forward"):
		angular_velocity.x -= rolling_force*delta
	elif Input.is_action_pressed("back"):
		angular_velocity.x += rolling_force*delta
	if Input.is_action_pressed("left"):
		angular_velocity.z += rolling_force*delta
	if Input.is_action_pressed("right"):
		angular_velocity.z -= rolling_force*delta
	
	if Input.is_action_pressed("jump") and $"Floor Check".is_colliding():
		print ("hello2")
		apply_central_impulse(Vector3.UP*jump_impulse)


func _on_sword_shield_body_entered(body):
	pass # Replace with function body.
