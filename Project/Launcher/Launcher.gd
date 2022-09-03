extends Node2D

var power := 200
var angle := 0.0
var rotationSpeed := 0.1
var clockwise := false
var _launched := false

func adjustAngle():
	
	if clockwise:
		if angle <= 0:
			clockwise = false
		else:
			angle -= rotationSpeed
	else:
		if angle >= 90:
			clockwise = true
		else:
			angle += rotationSpeed
	return angle
	



func _process(_delta):
	
	if not _launched:
		
		if Input.is_action_just_pressed("launch"):
			var impulse := Vector2(power,0).rotated(deg2rad(-angle))
			$LauncherSprite/Projectile.gravity_scale = 1
			$LauncherSprite/Projectile.apply_impulse(Vector2.ZERO, impulse )
			_launched = true
		adjustAngle()
		$LauncherSprite.rotation = deg2rad(-angle)
	
	
