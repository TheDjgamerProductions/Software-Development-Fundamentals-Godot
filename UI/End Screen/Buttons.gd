# This script is used to show the buttons that are used to change scenes when the player enters the name


extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.enemyBulletInstanceCount = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Submit_Button_pressed():
	self.visible = true
	pass # Replace with function body.


func _on_Name_Entry_text_entered(new_text:String):
	self.visible = true
	pass # Replace with function body.
