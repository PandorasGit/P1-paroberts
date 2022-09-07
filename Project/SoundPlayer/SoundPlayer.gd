extends Node2D

var launcher setget _set_launcher



func _set_launcher(value):
	launcher = value
	launcher.connect("projectile_launched", self, "_on_projectile_Launched")
	
func _on_projectile_Launched():
	$LauncherSound.play()
