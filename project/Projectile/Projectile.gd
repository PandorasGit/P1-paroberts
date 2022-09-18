extends RigidBody2D


func fire(impulse: Vector2) -> void:
	apply_impulse(Vector2.ZERO, impulse)
