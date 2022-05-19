# This script is used to add the score to the leaderboard with the name enterd inside the text entry that this script is connect to


extends LineEdit




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





func _on_Name_Entry_text_entered(new_text:String):
	var name = self.text #Sets var with the text entered in the text box
	var full = (str(GlobalVariables.currentScoringInormation.Score) + " " + name) #Combines the score with the name entered and save to a var
	GlobalVariables.highScoreInfomation[GlobalVariables.setings["Difficulty"]].append(full) #Addes the full var to the currnet Difficulty leaderboard
	print(GlobalVariables.highScoreInfomation)
	self.visible = false
	saveData()


func _on_Submit_Button_pressed():
	var name = self.text #Sets var with the text entered in the text box
	var full = (str(GlobalVariables.currentScoringInormation.Score) + " " + name) #Combines the score with the name entered and save to a var
	GlobalVariables.highScoreInfomation[GlobalVariables.setings["Difficulty"]].append(full) #Addes the full var to the currnet Difficulty leaderboard
	
	self.visible = false
	saveData()
	
	
func saveData():
	var file = File.new()
	var error = file.open(GlobalVariables.saveFile, file.WRITE)
	if error == OK:
		file.store_var(GlobalVariables.highScoreInfomation)
		file.close()
		print("saved")
	else:
		print("did not save")
