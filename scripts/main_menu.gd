extends Control


@onready var MainMenu = $"."
@onready var PlayButton = $TextureRect/Play
@onready var OptionsButton = $TextureRect/Options
@onready var QuitButton = $TextureRect/Quit
@onready var SFXSelect = $SFX_Select
@onready var SFXCancel = $SFX_Cancel



var SFX_bus = AudioServer.get_bus_index("SFX")

func _process(_delta: float) -> void:
	play_button_event()
	options_button_event()
	quit_button_event()

func play_button_event():
	if PlayButton.button_pressed:
		SFXSelect.play()
		MainMenu.visible = false
		get_tree().change_scene_to_file("res://Game/Level_1.tscn")


func options_button_event():
	if OptionsButton.button_pressed:
		$OptionsMenu.visible = not $OptionsMenu.visible


func quit_button_event():
	if QuitButton.button_pressed:
		SFXCancel.play()
		get_tree().quit()
