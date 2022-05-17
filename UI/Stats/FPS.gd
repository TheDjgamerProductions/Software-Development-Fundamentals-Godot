# This script is used for the text label showing the FPS inside the game


extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = GlobalVariables.setings.FPS_Counter

func _process(delta):
	self.text = ("FPS: " + str(Engine.get_frames_per_second()))


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
