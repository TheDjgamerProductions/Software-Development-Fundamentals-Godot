# This script is used for controlling the enemys



extends KinematicBody2D

var bullet = preload("res://Enemy/Bullet-Enemy/Bullet-Enemy.tscn")

var timeMin
var timeMax
var maxBullet

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	if GlobalVariables.setings["Difficulty"] == "Easy":
		timeMin = 1
		timeMax = 10
		maxBullet = 5
	elif GlobalVariables.setings["Difficulty"] == "Medium":
		timeMin = 1
		timeMax = 5
		maxBullet = 10
	elif GlobalVariables.setings["Difficulty"] == "Hard":
		timeMin = 0.5
		timeMax = 5
		maxBullet = 15
	elif GlobalVariables.setings["Difficulty"] == "GOD":
		timeMin = 0.5
		timeMax = 0.1
		maxBullet = 90000





# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	if area.is_in_group("right"):
		get_parent().global_position.y += 10
		if GlobalVariables.setings["Difficulty"] == "Easy":
			get_parent().speed = -50
		elif GlobalVariables.setings["Difficulty"] == "Medium":
			get_parent().speed = -100	
		elif GlobalVariables.setings["Difficulty"] == "Hard":
			get_parent().speed = -150
		elif GlobalVariables.setings["Difficulty"] == "GOD":
			get_parent().speed = -500
		
	if area.is_in_group("left"):
		if GlobalVariables.setings["Difficulty"] == "Easy":
			get_parent().speed = 50
		elif GlobalVariables.setings["Difficulty"] == "Medium":
			get_parent().speed = 100
		elif GlobalVariables.setings["Difficulty"] == "Hard":
			get_parent().speed = 150
		elif GlobalVariables.setings["Difficulty"] == "GOD":
			get_parent().speed = 500
		get_parent().global_position.y += 10
		
func _process(delta):
	while (true):
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		var time = rng.randf_range(timeMin, timeMax)
		yield(get_tree().create_timer(time), "timeout")
		if GlobalVariables.enemyBulletInstanceCount < maxBullet:
			var bulletInstance = bullet.instance()
			bulletInstance.position = Vector2(global_position.x, global_position.y+20)
			get_tree().get_root().add_child(bulletInstance)
