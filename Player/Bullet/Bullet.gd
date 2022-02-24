extends KinematicBody2D
var speed = 900
onready var Score = get_node("/root/MainGame/HUD/Score")




# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)	

func _physics_process(delta):
	if (get_tree().get_current_scene().get_name() != "MainGame"):
		queue_free()
	else:
		var collidedObject = move_and_collide(Vector2(0, -speed*delta))
		if (collidedObject != null):
			print(collidedObject)
			Score.Score = Score.Score + 1
			Score.text = ("Score: " + str(Score.Score))
			queue_free()
		




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



