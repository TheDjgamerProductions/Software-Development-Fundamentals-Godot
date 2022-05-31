extends RayCast2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
	
	
func _process(delta):
	if self.is_colliding():
		print("Found Ray cast")
		get_parent().canShoot = false
	else:
		#print("No Raycast")
		get_parent().canShoot = true
		pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
