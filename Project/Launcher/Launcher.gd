extends Node2D

var power := 200
var angle := 45

var _launched := false
func _ready():
	$LauncherSprite/Projectile.hide()

func _process(_delta):
	if not _launched and  Input.is_action_just_pressed("launch"):
		var impulse := Vector2(power,0).rotated(deg2rad(-angle))
		$LauncherSprite/Projectile.show()
		$LauncherSprite/Projectile.apply_impulse(Vector2.ZERO, impulse )
		_launched = true
