extends RigidBody2D

var _active := false
signal activated()


func _process(_delta):

	
	if linear_velocity != Vector2(0,0) and not _active:
		_active = true
		emit_signal("activated")
		$Explosion.emitting = true
		_removeTarget()

func _removeTarget():
	$DetonationTimer.start()
	yield($DetonationTimer, "timeout")
	deactivateTarget()
	


func deactivateTarget():
	$CollisionShape2D.disabled = true
	$Explosion.emitting = false
	linear_velocity = Vector2(0,0)
	angular_velocity = 0
	visible = false
	_active = false


func enableTargetCollision():
	$CollisionShape2D.disabled = false
	visible = true
