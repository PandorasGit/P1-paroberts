extends Node2D

var launcher setget _set_launcher


func _set_launcher(value) -> void:
	launcher = value
	launcher.connect("launched", self, "_on_launched")


func _on_launched() -> void:
	$LauncherSound.play()
