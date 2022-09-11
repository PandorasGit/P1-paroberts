extends RigidBody2D

var _active := false
var _timeToExplode := 2400
signal activated()


func _process(_delta):
	if _timeToExplode <= 0:
		explode()
	
	if linear_velocity != Vector2(0,0) and not _active:
		_active = true
		emit_signal("activated")
		$Explosion.emitting = true
	
	if _active:
		_timeToExplode -= 10

func explode():
	
	queue_free()
