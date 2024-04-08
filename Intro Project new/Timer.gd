extends Label
var timeleft = 25
signal Times
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if timeleft == 0:
		get_tree().change_scene_to_file("res://gameover.tscn")


func _on_timer_timeout():
	timeleft = timeleft -1
	text = "Timeleft = " + str(timeleft)
	if timeleft ==5:
		emit_signal("Times") 
