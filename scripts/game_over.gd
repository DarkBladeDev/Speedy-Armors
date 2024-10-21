extends Control

@onready var label = $Container/Label
@onready var options_button = $Container/Options
@onready var quit_button = $Container/Quit
@onready var timer = $Timer

signal player_died

func _ready():
	label.text = "[center][wave]GAME ENDED
SCORE: %s [/wave][/center]" % PlayerData.score
	PlayerData.score = 0
	
	emit_signal("player_died")
