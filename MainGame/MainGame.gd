extends Control
export(int) var Score
export(int) var countdownMax
var currentTimer






# Called when the node enters the scene tree for the first time.
func _ready():
	currentTimer = countdownMax
	while currentTimer != 0:
		$HUD/Countdown.text = ("Timer: " + str(currentTimer))
		yield(get_tree().create_timer(1.0), "timeout")
		currentTimer = currentTimer - 1 
	currentTimer = countdownMax
# warning-ignore:return_value_discarded
	get_tree().change_scene("res://UI/End Screen/End Screen.tscn")

	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
