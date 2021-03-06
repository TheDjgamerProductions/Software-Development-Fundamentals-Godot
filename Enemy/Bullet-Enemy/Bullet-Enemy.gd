#This script is used for the enemy's bullet script


extends KinematicBody2D

var speed = 500

# Called when the node enters the scene tree for the first time.
func _ready():
	GlobalVariables.enemyBulletInstanceCount += 1
	set_physics_process(true)


func _physics_process(delta):
	if (get_tree().get_current_scene().get_name() != "MainGame"): #Remove bullet if not on main game
		queue_free()
	var collidedObject = move_and_collide(Vector2(0, +speed*delta*0.4))
	if (collidedObject):
		#print(collidedObject.collider.name)
		#print("Enemy collide: ",collidedObject.collider.name)
		print(GlobalVariables.enemyBulletInstanceCount)
		if "Player" in collidedObject.collider.name: #If collided with player
			GlobalVariables.enemyBulletInstanceCount -= 1
			GlobalVariables.player_health -= 1
			queue_free()
		elif "Bullet" in collidedObject.collider.name: #If collided with bullet
			collidedObject.get_collider().queue_free()
		if "Border" in collidedObject.collider.name: #If collided with border
			GlobalVariables.enemyBulletInstanceCount -= 1
			queue_free()



