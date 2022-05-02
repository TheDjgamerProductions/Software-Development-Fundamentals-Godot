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

var highScoreInfomation = [

]


var setings = {
	"FPS_Counter": true

}



func _ready():
	pass

