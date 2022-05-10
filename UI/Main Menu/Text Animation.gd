extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var x = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	while 1 == 1:
		while x != 25:
			self.get_font("font").set_size(x)
			x = x + 1
			yield(get_tree().create_timer(0.0005), "timeout")
		yield(get_tree().create_timer(0.005), "timeout")
		while x != 0:
			self.get_font("font").set_size(x)
			x = x - 1
			yield(get_tree().create_timer(0.0005), "timeout")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
