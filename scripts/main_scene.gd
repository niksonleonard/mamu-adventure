extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready():
	$UserInterface/Retry.hide()

func _on_game_timer_timeout():
	$UserInterface/Retry.show()
	$Player.queue_free()
	print("It is over darling")

func _unhandled_input(event):
	if event.is_action_pressed("ui_accept") and $UserInterface/Retry.visible:
		# This restarts the current scene.
		get_tree().reload_current_scene()