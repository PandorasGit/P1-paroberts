extends Node2D


func _ready():
	$HUD.launcher = $Launcher
	$HUD.targetLayout = $TargetLayout
	$SoundPlayer.launcher = $Launcher
