extends Node
var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0
var player_health = 3
var winCondition = ""
var saveFile = "user://save.json"




var currentScoringInormation = {
	"Score": 0,
	"Player": "User",
}

var highScoreInfomation = {
	"Easy": [],
	"Medium": [],
	"Hard": [],
	"GOD": []
	
	
	
	
}




var setings = {
	"FPS_Counter": true,
	"Difficulty": "Easy"



}



func _ready():
	var file = File.new()
	var error = file.open(GlobalVariables.saveFile, File.READ)
	if error == OK:
		GlobalVariables.highScoreInfomation = file.get_var()
		file.close()
	pass

