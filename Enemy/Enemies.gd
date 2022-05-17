# This script is used to move the Enemy group


extends Node2D


var speed = 50
var direction = "right"


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	if GlobalVariables.setings["Difficulty"] == "Easy":
		speed = -50
	elif GlobalVariables.setings["Difficulty"] == "Medium":
		speed = -100
	elif GlobalVariables.setings["Difficulty"] == "Hard":
		speed = -150
	elif GlobalVariables.setings["Difficulty"] == "GOD":
		speed = -500



func _physics_process(delta):
	global_position.x += speed * delta
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
