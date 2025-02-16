extends CharacterState


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
	
func _frame_9():
	if data:
		for i in 5:
			var temp = host.spawn_object(load("res://_Highwayman/characters/Highwayman/Buckshot.tscn"), 16, -20)
			temp.set_grounded(false)
			temp.set_facing(host.get_facing_int())
			var dir = xy_to_dir(data.x, data.y, "25")
			match i:
				0:
					temp.apply_force(dir.x, dir.y)
					temp.sprite.rotation = Vector2(dir.x, dir.y).angle()
				1:
					var angle = fixed.rotate_vec(dir.x, dir.y, "0.0349066") #that goofy number is 5 degrees in radians
					temp.apply_force(angle.x, angle.y)
					temp.sprite.rotation = Vector2(angle.x, angle.y).angle()
				2:
					var angle = fixed.rotate_vec(dir.x, dir.y, "0.0698132") #doubled
					temp.apply_force(angle.x, angle.y)
					temp.sprite.rotation = Vector2(angle.x, angle.y).angle()
				3:
					var angle = fixed.rotate_vec(dir.x, dir.y, "-0.0349066") #negative
					temp.apply_force(angle.x, angle.y)
					temp.sprite.rotation = Vector2(angle.x, angle.y).angle()
				4:
					var angle = fixed.rotate_vec(dir.x, dir.y, "-0.0698132")
					temp.apply_force(angle.x, angle.y)
					temp.sprite.rotation = Vector2(angle.x, angle.y).angle()
