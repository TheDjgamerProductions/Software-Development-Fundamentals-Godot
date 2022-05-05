extends Control

export(NodePath) var buttonPath
onready var button = get_node(buttonPath)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for button in button.get_children():
		button.connect("pressed", self ,"onButton_Pressed", [button.scene_to_load])
	loadSave()
	




func onButton_Pressed(scene_to_load):
	get_tree().change_scene(scene_to_load)
	



func loadSave():
	var file = File.new()
	var error = file.open(GlobalVariables.saveFile, File.READ)
	if error == OK:
		GlobalVariables.highScoreInfomation = file.get_var()
		file.close()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
