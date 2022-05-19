# This script is the main game scirpt. This sciprt runs when the main game is loaded
# This script handles the timer in the game and ending the game when there are no emenys left



extends Control

export(int) var countdownMax
var currentTimer






# Called when the node enters the scene tree for the first time.
func _ready():
	#Reset needed vars
	GlobalVariables.player_health = 3
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



func _process(delta):
	if get_tree().get_nodes_in_group("Enemy").size() == 0: #If all emenys killed
		GlobalVariables.winCondition = "Killed all the Enemys"
		get_tree().change_scene("res://UI/End Screen/End Screen.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
