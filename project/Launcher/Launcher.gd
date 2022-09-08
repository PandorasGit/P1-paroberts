extends Node2D

var power := 200
var angle := 0.0
var rotationSpeed := 0.1
var clockwise := false
var _launched := false
var _activeProjectile
var _powerChangeRate := 1
export var maxPower := 500
export var minPower := 100
export var projectilesLeft := 3

signal angle_changed(new_angle)
signal power_changed(new_power)
signal projectile_count_changed(new_count)
signal projectile_launched(new_launch)


func adjustAngle():
	if clockwise:
		rotate_clockwise()
	else:
		rotate_counterclockwise()
	emit_signal("angle_changed", angle)


func rotate_counterclockwise():
	angle += rotationSpeed
	if angle >= 90.0:
		clockwise = true


func rotate_clockwise():
	angle -= rotationSpeed
	if angle <= 0.0:
		clockwise = false


func _process(_delta):
	
	if not _launched:
		emit_signal("power_changed", power)
		if Input.is_action_pressed("adjustPower") && power <= maxPower:
			power += _powerChangeRate
		elif power > minPower:
			power -= _powerChangeRate
		
		if Input.is_action_just_pressed("launch"):
			emit_signal("projectile_launched")
			var impulse := Vector2(power,0).rotated(deg2rad(-angle))
			
			_activeProjectile = preload("res://Projectile/Projectile.tscn").instance()
			add_child(_activeProjectile)
			projectilesLeft -= 1
			emit_signal("projectile_count_changed", projectilesLeft)
			_activeProjectile.launch(impulse)
			_activeProjectile.connect("sleeping_state_changed", self, "_on_Projectile_sleeping_state_changed")
			_launched = true
			
		adjustAngle()
		rotation = deg2rad(-angle)


func _on_Projectile_sleeping_state_changed():
	_activeProjectile.queue_free()
	if projectilesLeft > 0:
		_launched = false
