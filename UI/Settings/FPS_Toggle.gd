# This scipt is used for the toggle of the FPS counter inside the main game


extends CheckButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.pressed = GlobalVariables.setings.FPS_Counter


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CheckButton_pressed():
	GlobalVariables.setings.FPS_Counter = self.pressed
	print(GlobalVariables.setings.FPS_Counter)


