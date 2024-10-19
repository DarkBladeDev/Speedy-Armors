extends Control

@onready var label = $Container/Label
@onready var options_button = $Container/Options
@onready var quit_button = $Container/Quit
@onready var timer = $Timer

func _ready():
	label.text = "[center][wave]GAME OVER
SCORE: %s [/wave][/center]" % Main.score
	Main.score = 0
