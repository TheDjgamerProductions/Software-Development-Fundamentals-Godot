# This script is used for the dropdown menu that changes the difficulty of the game



extends OptionButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = GlobalVariables.setings["Difficulty"]


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_OptionButton_item_selected(id):
	GlobalVariables.setings["Difficulty"] = self.text
