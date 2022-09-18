extends Node2D


func _ready():
	$HUD.launcher = $Launcher
	$HUD.targetLayout = $TargetLayout
	$SoundPlayer.launcher = $Launcher
# warning-ignore:return_value_discarded
	$HUD.connect("world_Reset_Initiated", self, "_on_World_Reset")
# warning-ignore:return_value_discarded
	$HUD.connect("game_Start_Initiated", self, "_on_Game_Start")

func _on_World_Reset():
	$TargetLayout.resetTargetLayout()


func _on_Game_Start():
		$Launcher.resetLauncher()
