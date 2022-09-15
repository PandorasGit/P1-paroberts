extends Node2D

var _mainMenu = load("res://MainMenu/MainMenu.tscn")

func _ready():
	$HUD.launcher = $Launcher
	$HUD.targetLayout = $TargetLayout
	$SoundPlayer.launcher = $Launcher
	var _ignore = $HUD.connect("reset_World", self, "_on_World_Reset")

func _on_World_Reset():
	print("hello")
	var _ignore = get_tree().change_scene_to(_mainMenu)
	queue_free()
