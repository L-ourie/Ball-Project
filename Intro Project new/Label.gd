extends Label
var coinTotal = 0
var lives = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_coin_coin_collected():
	coinTotal = coinTotal + 1
	text ="coins = " + str(coinTotal)


func _on_sword_shield_hit():
	pass # Replace with function body.
