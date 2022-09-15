extends Control


var launcher setget _set_launcher
var targetLayout setget _set_targetMap

var display_angle : String

signal reset_World()


func _set_targetMap(value):
	targetLayout = value
	_update_score_label(0)
	targetLayout.connect("score_changed", self, "_on_score_change")

func _on_score_change(new_score):
	_update_score_label(new_score)
	
func _update_score_label(new_score):
	$VBoxContainer/ScoreLabel.text = "Score: %d" % new_score

func _set_launcher(value):
	var _ignore = $ResetButton.connect("pressed", self, "_on_ResetButton_Pressed")
	
	launcher = value
	_update_angle_label(launcher.angle)
	launcher.connect("angle_changed", self, "_on_Launcher_angle_changed")
	
	$PowerMeter.min_value = launcher.minPower
	$PowerMeter.max_value = launcher.maxPower
	launcher.connect("power_changed", self, "_on_Launcher_power_changed")
	
	_on_projectile_count_changed(launcher.projectilesLeft)
	launcher.connect("projectile_count_changed", self, "_on_projectile_count_changed")
	
	launcher.connect("projectiles_depleted", self, "_on_projectiles_depleted")
	

func _on_Launcher_angle_changed(new_angle):
	_update_angle_label(new_angle)


func _update_angle_label(angle):
	$VBoxContainer/AngleLabel.text = "Angle: %d" % angle


func _on_Launcher_power_changed(new_power):
	_update_power_scroll_bar(new_power)


func _update_power_scroll_bar(power):
	$PowerMeter.value = power


func _on_projectile_count_changed(new_count):
	_update_projectile_count(new_count)


func _update_projectile_count(projectileCount):
	$VBoxContainer/ProjectilesLeftLabel.text = "Projectiles left: %d" % projectileCount


func _on_projectiles_depleted():
	$ResetButton.visible = true


func _on_ResetButton_Pressed():
	emit_signal("reset_World")
