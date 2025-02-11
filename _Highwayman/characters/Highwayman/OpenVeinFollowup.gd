extends ThrowState



# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_hit_something(obj, hitbox):
	if obj == host.opponent:
		host.BleedTimer += 200
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
