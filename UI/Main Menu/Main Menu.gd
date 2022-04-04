extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for button in $"VBoxContainer/Buttons/GameSceneButtons/".get_children():
		button.connect("pressed", self ,"onButton_Pressed", [button.scene_to_load])
		print(button.name + " " + button.scene_to_load)
	




func onButton_Pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
