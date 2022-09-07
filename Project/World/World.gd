extends Node2D


func _ready():
	$HUD.launcher = $Launcher
	$SoundPlayer.launcher = $Launcher
