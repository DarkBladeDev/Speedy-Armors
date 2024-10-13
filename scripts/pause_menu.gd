extends CanvasLayer


@onready var OptionsButton = $Options
@onready var ResumeButton = $Resume
@onready var QuitButton = $Quit




func _physics_process(_delta: float) -> void:
	pause_event()
	options_in_pause_event()
	resume_in_pause_event()
	quit_button_event()
	
	
	
func pause_event():
	if Input.is_action_just_pressed("Pause"):
		get_tree().paused = not get_tree().paused
		$ColorRect.visible = not $ColorRect.visible
		$Label.visible = not $Label.visible
		$Resume.visible = not $ColorRect.visible
		$Options.visible = not $Options.visible
		$Quit.visible = not $Quit.visible



func options_in_pause_event():
	if OptionsButton.button_pressed:
		$ColorRect.visible = not $ColorRect.visible
		$Label.visible = not $Label.visible
		$Resume.visible = not $ColorRect.visible
		$Options.visible = not $Options.visible
		$Quit.visible = not $Quit.visible
		
		$OptionsMenu.visible = not $OptionsMenu.visible




func resume_in_pause_event():
	if ResumeButton.button_pressed:
		get_tree().paused = not get_tree().paused





func quit_button_event():
	if QuitButton.button_pressed:
		get_tree().quit()
