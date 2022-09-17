extends Node2D

var score := 0

signal score_changed(new_score)

func _ready():
	randomize()
	for _currentTarget in get_children():
		_connectTargetSignals(_currentTarget)
		_randomizeTargetLayout(_currentTarget)

func _connectTargetSignals(_currentTarget):
	_currentTarget.connect("activated", self, "_on_Target_sleeping_state_changed")

func _on_Target_sleeping_state_changed():
	score += 1
	emit_signal("score_changed", score)

func _randomizeTargetLayout(_currentTarget):
	var randomX = rand_range(50, 1500)
	var randomY = rand_range(50, 750)
	_currentTarget.position = Vector2(randomX, randomY)


func resetTargetLayout():
	score = 0
	for _currentTarget in get_children():
		_currentTarget.deactivateTarget()
		_currentTarget.enableTargetCollision()
		_randomizeTargetLayout(_currentTarget)

