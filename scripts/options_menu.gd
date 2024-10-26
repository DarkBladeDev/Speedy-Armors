extends CanvasLayer

@onready var ReturnButton = $Background/Return
@onready var GameScene = "res://Game/Level_1.tscn"
@onready var PauseMenu = $".."


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	return_button_event()


func return_button_event():
	if ReturnButton.button_pressed:
		if get_tree().current_scene.scene_file_path == GameScene:
			PauseMenu.resume_in_pause_event()
		else:
			get_tree().change_scene_to_file("res://GUI/MainMenu.tscn")
