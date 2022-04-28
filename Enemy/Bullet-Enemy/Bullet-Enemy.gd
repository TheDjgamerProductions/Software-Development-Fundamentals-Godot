extends KinematicBody2D

var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.enemyBulletInstanceCount += 1
	set_physics_process(true)


func _physics_process(delta):
	if (get_tree().get_current_scene().get_name() != "MainGame"):
		queue_free()
	var collidedObject = move_and_collide(Vector2(0, +speed*delta*0.4))
	if (collidedObject):
		#print(collidedObject.collider.name)
		#print("Enemy collide: ",collidedObject.collider.name)
		print(GlobalVariables.enemyBulletInstanceCount)
		if "Player" in collidedObject.collider.name:
			GlobalVariables.enemyBulletInstanceCount = 0
			get_tree().change_scene("res://UI/Fail/Fail.tscn")
		elif "Enemy" or "Bullet" in collidedObject.collider.name:
			pass
		if "Border" in collidedObject.collider.name:
			GlobalVariables.enemyBulletInstanceCount -= 1
			queue_free()



