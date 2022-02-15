extends KinematicBody2D

export(int) var movenent_speed

# Declare member variables here. Examples:


# Called when the node enters the scene tree for the first time.
func _ready():
	set_physics_process(true)
	
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_left"): 
		if position.x <= -37:
			print("Player went outside")
			position.x = 1298.94
		print("Left")
		move_and_collide(Vector2(-movenent_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		if position.x >= 1298.94:
			print("Player went outside")
			position.x = -37
		print("Right")
		move_and_collide(Vector2(movenent_speed * delta, 0))		
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
