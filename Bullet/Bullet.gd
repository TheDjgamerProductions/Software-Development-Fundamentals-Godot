extends KinematicBody2D
var speed = 900



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)	

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, -speed*delta))
	if collidedObject != null:
		yield(get_tree().create_timer(1.0), "timeout")
		queue_free()




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



