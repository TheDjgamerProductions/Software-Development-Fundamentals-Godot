extends KinematicBody2D
var speed = 900




# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)	

func _physics_process(delta):
	if (get_tree().get_current_scene().get_name() != "MainGame"):
		queue_free()
	else:
		var collidedObject = move_and_collide(Vector2(0, -speed*delta))
		if (collidedObject):
			if ("Enemy" in collidedObject.collider.name):
				collidedObject.get_collider().queue_free()
				queue_free()
			if (collidedObject.collider.name == "Border_Top"):
				queue_free()		




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



