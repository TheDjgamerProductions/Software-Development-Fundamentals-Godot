extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass





# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	if area.is_in_group("right"):
		get_parent().global_position.y += 10
		get_parent().speed = -100
	if area.is_in_group("left"):
		get_parent().speed = 100
		get_parent().global_position.y += 10
