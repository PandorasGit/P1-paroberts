extends Node2D


signal score_changed(new_score)


var score := 0


func _ready() -> void:
	randomize()
	for _current_target in get_children():
		_current_target.connect("activated", self, "_on_activated")
		_randomize_layout(_current_target)


func _on_activated() -> void:
	score += 1
	emit_signal("score_changed", score)


func _randomize_layout(_current_target: RigidBody2D) -> void:
	var randomX = rand_range(50, 1500)
	var randomY = rand_range(50, 750)
	_current_target.position = Vector2(randomX, randomY)


func reset_layout() -> void:
	score = 0
	for _current_target in get_children():
		_current_target.deactivate()
		_randomize_layout(_current_target)
