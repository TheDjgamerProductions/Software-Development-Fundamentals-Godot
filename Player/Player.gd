# This script is the main player script.
# This scipt handles:
# Player movment
# Player Fireing
# And Loop around when the players goes off screen
#



extends KinematicBody2D
var bulletSource = preload ("res://Player/Bullet/Bullet.tscn")
export(int) var movenent_speed

# Declare member variables here. Examples:


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	set_physics_process(true)
	
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var bulletInstance = bulletSource.instance()
		bulletInstance.position = Vector2(position.x, position.y-50)
		get_tree().get_root().add_child(bulletInstance)
	if GlobalVariables.player_health == 0:
		get_tree().change_scene("res://UI/Fail/Fail.tscn")
			




func _physics_process(delta):
	if Input.is_action_pressed("ui_left"): 
		if position.x <= -37:
			print("Player went outside")
			position.x = 1298.94
		move_and_collide(Vector2(-movenent_speed * delta, 0))
	if Input.is_action_pressed("ui_right"):
		if position.x >= 1298.94:
			print("Player went outside")
			position.x = -37
		move_and_collide(Vector2(movenent_speed * delta, 0))		
		
		
		
		



	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
