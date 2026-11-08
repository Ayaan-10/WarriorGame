extends TextureButton

var clicked: bool = false


func _ready() -> void:
	pressed.connect(_on_pressed)
	focus_mode = Control.FOCUS_NONE


func _process(delta: float) -> void:
	position.x += 30 * delta


func _on_pressed() -> void:
	if clicked:
		return

	clicked = true
	disabled = true
	hide()
	get_parent().target_clicked()
