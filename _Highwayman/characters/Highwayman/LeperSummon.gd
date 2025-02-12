extends CharacterState

func is_usable():
	return .is_usable() and host.obj_from_name(host.leper) == null

func _frame_x():
	var temp = host.spawn_object(load("res://_Highwayman/characters/Highwayman/Summons/LeperProj.tscn"), 16, -16)
	host.leper = temp.obj_name
