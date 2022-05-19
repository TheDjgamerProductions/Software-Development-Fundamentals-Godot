extends Label



# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = ("You Scored " + str(GlobalVariables.currentScoringInormation.Score)) #Updates the text to include the score the player got
	pass # Replace with function body.


