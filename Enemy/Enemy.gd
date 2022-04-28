extends KinematicBody2D

var bullet = preload("res://Enemy/Bullet-Enemy/Bullet-Enemy.tscn")


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
		get_parent().speed = -50
	if area.is_in_group("left"):
		get_parent().speed = 50
		get_parent().global_position.y += 10
		
func _process(delta):
	while (true):
		var rng = RandomNumberGenerator.new()
		rng.randomize()
		var time = rng.randf_range(0.5, 10.0)
		yield(get_tree().create_timer(time), "timeout")
		if GlobalVariables.enemyBulletInstanceCount < 5:
			var bulletInstance = bullet.instance()
			bulletInstance.position = Vector2(global_position.x, global_position.y+20)
			get_tree().get_root().add_child(bulletInstance)
