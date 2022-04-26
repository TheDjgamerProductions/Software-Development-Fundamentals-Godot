extends Node2D


var speed = 100
var direction = "right"
var rng = RandomNumberGenerator.new()


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	set_physics_process(true)




func _physics_process(delta):
	if direction == "right":
		global_position.x += speed * delta
		if global_position.x >= 860:
			direction = "left"
	else:
		global_position.x -= speed * delta
		if global_position.x <= 650:
			direction = "right"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
