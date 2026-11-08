extends Node2D

@onready var themed_timer: Node2D = $Themed_Timer

var buttons_pressed: int = 0
var finished: bool = false


func _ready() -> void:
	await themed_timer.Timer(7.0)

	if not finished:
		finish_game(false)


func target_clicked() -> void:
	if finished:
		return

	buttons_pressed += 1

	if buttons_pressed >= 4:
		finish_game(true)


func finish_game(won: bool) -> void:
	finished = true

	if won:
		get_tree().change_scene_to_file("res://scenes/done_screen.tscn")
	else:
		Global.lives -= 1
		Global.minigames_done -= 1
		get_tree().change_scene_to_file("res://scenes/timer_screen.tscn")
