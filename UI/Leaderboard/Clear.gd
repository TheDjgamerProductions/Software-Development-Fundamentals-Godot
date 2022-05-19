extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Clear_pressed():
	GlobalVariables.highScoreInfomation = { #Set the leaderboard to defualt
	"Easy": [],
	"Medium": [],
	"Hard": [],
	"GOD": []
	}
	print(GlobalVariables.highScoreInfomation)
	saveData()
	pass # Replace with function body.



func saveData():
	var file = File.new()
	var error = file.open(GlobalVariables.saveFile, file.WRITE)
	if error == OK:
		file.store_var(GlobalVariables.highScoreInfomation)
		print(file.get_var())
		file.close()
	else:
		print("did not save")
