extends Node2D



func _on_play_again_pressed() -> void:
	Global.minigames_done = 0
	Global.lives = 5

	get_tree().change_scene_to_file("res://scenes/timer_screen.tscn")


func _on_main_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/title_screen.tscn")
