extends Control


var launcher setget _set_launcher

var display_angle : String


func _set_launcher(value):
	launcher = value
	print(launcher.angle)
	_update_angle_label(launcher.angle)
	launcher.connect("angle_changed", self, "_on_World_angle_changed")


func _on_World_angle_changed(new_angle):
	_update_angle_label(new_angle)


func _update_angle_label(angle):
	
	$VBoxContainer/AngleLabel.text = "Angle: %d" % angle
