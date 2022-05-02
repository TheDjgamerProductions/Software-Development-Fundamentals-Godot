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
	GlobalVariables.winCondition = "Time!"
	get_tree().change_scene("res://UI/End Screen/End Screen.tscn")

	
	
	pass # Replace with function body.


func _process(delta):
	if get_tree().get_nodes_in_group("Enemy").size() == 0:
		GlobalVariables.winCondition = "Killed all the Enemys"
		get_tree().change_scene("res://UI/End Screen/End Screen.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
