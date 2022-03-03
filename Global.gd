extends Node
var bulletInstanceCount = 0 # Keeps track of how many bullet instances are current
var enemyBulletInstanceCount = 0




var currentScoringInormation = {
	"Score": 0,
	"Player": "User",
}

var highScoreInfomation = [

]

func _ready():
	self.loadData()

