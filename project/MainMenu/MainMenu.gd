extends Control

var _world = preload("res://World/World.tscn")

func _ready():
	var _ignore = $StartButton.connect("pressed", self, "_on_StartButton_Pressed")
	

func _on_StartButton_Pressed():
	var _ignore = get_tree().change_scene_to(_world)
	queue_free()

