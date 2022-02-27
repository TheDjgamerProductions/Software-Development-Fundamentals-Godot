extends Button
onready var Leaderboard = get_node("res://UI/Leaderboard/Leaderboard.gd")


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _pressed():
	#var name = get_parent().text
	#Leaderboard.updateList()
	print(get_parent().text)
	get_parent().visible = false

	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


