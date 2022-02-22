extends KinematicBody2D
var speed = 900
onready var globalVars = get_node("/root/MainGame")




# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)	

func _physics_process(delta):
	var collidedObject = move_and_collide(Vector2(0, -speed*delta))
	if collidedObject != null:
		yield(get_tree().create_timer(1.0), "timeout")
		globalVars.Score = globalVars.Score + 1
		$root/MainGame/HUD/Score.text = ("Score: " + str(globalVars.Score))
		queue_free()
		




# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass



