const Dead_zone = 100



func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		var _target = event.position - get_viewport().size * 0.5
		if _target.length() < Dead_zone:
			self.position = Vector2(0, 0)
		else:
			self.position = _target.normalized() * (_target.length() - Dead_zone) * 0.5