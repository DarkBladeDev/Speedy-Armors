extends CanvasLayer

@onready var ReturnButton = $Background/Return


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	return_button_event()


func return_button_event():
	if ReturnButton.button_pressed:
		get_tree().change_scene_to_file("res://GUI/MainMenu.tscn")
