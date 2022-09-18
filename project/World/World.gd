extends Node2D


func _ready() -> void:
	$HUD.launcher = $Launcher
	$HUD.target_layout = $TargetLayout
	$SoundPlayer.launcher = $Launcher
# warning-ignore:return_value_discarded
	$HUD.connect("restored", self, "_on_HUD_restored")
# warning-ignore:return_value_discarded
	$HUD.connect("game_started", self, "_on_game_started")


func _on_HUD_restored() -> void:
	$TargetLayout.reset_layout()


func _on_game_started() -> void:
		$Launcher.resetLauncher()
