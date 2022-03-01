extends LineEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Name_Entry_text_entered(new_text:String):
	var name = self.text
	var full = (str(GlobalVariables.currentScoringInormation.Score) + " " + name)
	GlobalVariables.highScoreInfomation.append(full)
	print(GlobalVariables.highScoreInfomation)
	self.hide()
