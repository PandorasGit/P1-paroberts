extends RigidBody2D


func launch(impulse):
	apply_impulse(Vector2.ZERO, impulse )
	
