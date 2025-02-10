extends Fighter


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var BleedTimer = 0;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
func tick():
	.tick()
	if BleedTimer > 0:
		if opponent.hp > 1:
			opponent.hp -= 1
		BleedTimer -= 1
#func _on_hit_something(obj, hitbox):
#	if obj == host.opponent:
#		host.BleedTimer = 60

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
