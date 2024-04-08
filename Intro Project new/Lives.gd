extends Label
var lives = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if lives ==0:
		get_tree().change_scene_to_file("res://gameover.tscn")


func _on_sword_shield_hit():
	lives = lives -1
	text = "lives = " +str(lives)
