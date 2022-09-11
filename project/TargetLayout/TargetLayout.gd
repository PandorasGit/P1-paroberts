extends Node2D

var score := 0

signal score_changed(new_score)

func _ready():
	for _current_Target in get_children():
		_current_Target.connect("activated", self, "_on_Target_sleeping_state_changed")

func _on_Target_sleeping_state_changed():
	score += 1
	emit_signal("score_changed", score)
