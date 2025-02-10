extends CharacterState


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func _enter():
	if data:
		if data.x == host.get_facing_int() and data.y == 1:
			return "AirShotDiag"
		if data.x == host.get_facing_int() and data.y == 0:
			return "AirShotHori"

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
