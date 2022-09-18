extends Control


signal restored
signal game_started


var launcher setget _set_launcher
var target_layout setget _set_target_layout
var display_angle : String


func _ready() -> void:
# warning-ignore:return_value_discarded
	$MainMenu/StartButton.connect("pressed", self, "_on_StartButton_Pressed")
# warning-ignore:return_value_discarded
	$ResetButton.connect("pressed", self, "_on_ResetButton_Pressed")


func _set_target_layout(value: Node2D) -> void:
	target_layout = value
	_update_score_label(0)
	target_layout.connect("score_changed", self, "_on_score_changed")


func _on_score_changed(new_score: int) -> void:
	_update_score_label(new_score)


func _update_score_label(score: int) -> void:
	$VBoxContainer/ScoreLabel.text = "Score: %d" % score


func _set_launcher(value: Node2D) -> void:
	launcher = value
	_update_angle_label(launcher.angle)
	launcher.connect("angle_changed", self, "_on_Launcher_angle_changed")
	$PowerMeter.min_value = launcher.min_power
	$PowerMeter.max_value = launcher.max_power
	launcher.connect("power_changed", self, "_on_Launcher_power_changed")
	_update_count(launcher.ammo)
	launcher.connect("count_changed", self, "_on_Launcher_count_changed")
	launcher.connect("depleted", self, "_on_Launcher_depleted")


func _on_Launcher_angle_changed(new_angle: float) -> void:
	_update_angle_label(new_angle)


func _update_angle_label(angle: float) -> void:
	$VBoxContainer/AngleLabel.text = "Angle: %d" % angle


func _on_Launcher_power_changed(new_power: int) -> void:
	_update_power_scroll_bar(new_power)


func _update_power_scroll_bar(power: int) -> void:
	$PowerMeter.value = power


func _on_Launcher_count_changed(new_count: int) -> void:
	_update_count(new_count)


func _update_count(count: int) -> void:
	$VBoxContainer/AmmoLabel.text = "Projectiles left: %d" % count
	$VBoxContainer/AmmoLabel.text = "Projectiles left: %d" % count


func _on_Launcher_depleted() -> void:
	$ResetButton.visible = true


func _on_ResetButton_Pressed() -> void:
	$ResetButton.visible = false
	$MainMenu.visible = true
	emit_signal("restored")


func _on_StartButton_Pressed() -> void:
	$MainMenu.visible = false
	emit_signal("game_started")
