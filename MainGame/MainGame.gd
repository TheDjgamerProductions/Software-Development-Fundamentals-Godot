extends Control

export(int) var countdownMax
var currentTimer






# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.currentScoringInormation.Score = 0
	currentTimer = countdownMax
	while currentTimer != 0:
		$HUD/Countdown.text = ("Timer: " + str(currentTimer))
		yield(get_tree().create_timer(1.0), "timeout")
		currentTimer = currentTimer - 1 
	currentTimer = countdownMax
	print("timer end")
	get_tree().change_scene("res://UI/End Screen/End Screen.tscn")

	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
