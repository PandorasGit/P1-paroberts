extends RigidBody2D


signal activated


var _is_active := false


func _process(_delta: float) -> void:
	if linear_velocity != Vector2(0,0) and not _is_active:
		_is_active = true
		emit_signal("activated")
		$Explosion.emitting = true
		_remove()


func _remove() -> void:
	$DetonationTimer.start()
	yield($DetonationTimer, "timeout")
	_freeze()


func _freeze() -> void:
	$CollisionShape2D.disabled = true
	$Explosion.emitting = false
	linear_velocity = Vector2(0,0)
	angular_velocity = 0
	visible = false
	_is_active = false


func _enable_collision() -> void:
	$CollisionShape2D.disabled = false
	visible = true


func deactivate() -> void:
	_freeze()
	_enable_collision()
