extends Node2D


signal angle_changed(new_angle)
signal power_changed(new_power)
signal count_changed(new_count)
signal launched
signal depleted


export var max_power := 500
export var min_power := 100
export var _max_ammo := 3


var power := 200
var angle := 0.0
var ammo := 3


var _rotation_speed := 0.1
var _is_clockwise := false
var _has_launched := true
var _active_projectile
var _power_change_rate := 1


func _ready() -> void:
	_replenishProjectiles()


func _process(_delta: float) -> void:
	if not _has_launched:
		
		emit_signal("power_changed", power)
		if Input.is_action_pressed("adjust_power") && power <= max_power:
			power += _power_change_rate
		elif power > min_power:
			power -= _power_change_rate
		
		if Input.is_action_just_pressed("launch"):
			emit_signal("launched")
			var impulse := Vector2(power,0).rotated(deg2rad(-angle))
			_active_projectile = preload("res://Projectile/Projectile.tscn").instance()
			add_child(_active_projectile)
			ammo -= 1
			emit_signal("count_changed", ammo)
			_active_projectile.fire(impulse)
			_active_projectile.connect("sleeping_state_changed", self, "_on_Projectile_sleeping_state_changed")
			_has_launched = true
			
		_adjustAngle()
		rotation = deg2rad(-angle)


func _adjustAngle() -> void:
	if _is_clockwise:
		_rotate_clockwise()
	else:
		_rotate_counterclockwise()
	emit_signal("angle_changed", angle)


func _rotate_counterclockwise() -> void:
	angle += _rotation_speed
	if angle >= 90.0:
		_is_clockwise = true


func _rotate_clockwise() -> void:
	angle -= _rotation_speed
	if angle <= 0.0:
		_is_clockwise = false


func _on_Projectile_sleeping_state_changed() -> void:
	_active_projectile.queue_free()
	if ammo > 0:
		_has_launched = false
	else:
		emit_signal("depleted")


func _replenishProjectiles() -> void:
	ammo = _max_ammo


func resetLauncher() -> void:
	_replenishProjectiles()
	angle = 0
	_has_launched = false
