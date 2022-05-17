extends ItemList

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in GlobalVariables.highScoreInfomation[GlobalVariables.setings["Difficulty"]]:
		self.add_item(i, null, false)
	self.sort_items_by_text()






# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Clear_pressed():
	self.clear()
	pass # Replace with function body.


func _on_OptionButton_item_selected(id):
	self.clear()
	for i in GlobalVariables.highScoreInfomation[get_parent().text]:
		self.add_item(i, null, false)
	self.sort_items_by_text()
