extends Node2D

func _ready() -> void:
	SceneTransitions.fade_in()
	

func _on_play_pressed() -> void:
	Global.minigames_done = 0
	Global.lives = 5

	SceneTransitions.fade_out()
	await SceneTransitions.fade_complete

	get_tree().change_scene_to_file("res://scenes/timer_screen.tscn")



func _on_exit_pressed() -> void:
	get_tree().quit()
