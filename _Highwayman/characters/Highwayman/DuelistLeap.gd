extends CharacterState


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _frame_0():
	var facing = host.get_facing_int();
	if fixed.gt(host.get_vel().x, "0"): #going right
		if facing == -1: #facing left
			host.reset_momentum();
		host.apply_force_relative("5", "-6")
	elif fixed.lt(host.get_vel().x, "0"): #going left
		if facing == 1: #and facing right
			host.reset_momentum();
		host.apply_force_relative("5", "-6")
	else:
		host.apply_force_relative("5", "-6")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
