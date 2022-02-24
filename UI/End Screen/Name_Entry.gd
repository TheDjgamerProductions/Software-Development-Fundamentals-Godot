extends LineEdit
onready var Leaderboard = get_node("res://UI/Leaderboard/Leaderboard.gd")

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
	#var name = self.text
	#Leaderboard.updateList(name, 100)
	self.hide()
