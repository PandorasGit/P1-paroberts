extends Control


var launcher setget _set_launcher

var display_angle : String


func _set_launcher(value):
	launcher = value
	_update_angle_label(launcher.angle)
	launcher.connect("angle_changed", self, "_on_Launcher_angle_changed")
	launcher.connect("power_changed", self, "_on_Launcher_power_changed")


func _on_Launcher_angle_changed(new_angle):
	_update_angle_label(new_angle)


func _update_angle_label(angle):
	$VBoxContainer/AngleLabel.text = "Angle: %d" % angle

func _on_Launcher_power_changed(new_power):
	_update_power_scroll_bar(new_power)
	
func _update_power_scroll_bar(power):
	$PowerMeter.value = power
