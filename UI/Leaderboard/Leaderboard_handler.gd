extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	update("Test", 100)
	pass # Replace with function body.


func update(Name, Score):
	var full = (Name + " Points: " + str(Score))
	self.add_item(full, null , false)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
