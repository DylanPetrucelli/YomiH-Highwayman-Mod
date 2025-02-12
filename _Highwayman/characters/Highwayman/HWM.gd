extends Fighter

var BleedTimer = 0;
var leper = ""

func _ready():
	pass 
	
func tick():
	.tick()
	if BleedTimer > 0:
		if opponent.hp > 1:
			opponent.hp -= 1
		BleedTimer -= 1
#func _on_hit_something(obj, hitbox):
#	if obj == host.opponent:
#		host.BleedTimer = 60
	
