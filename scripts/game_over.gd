extends Control

@onready var curtain = $"."
@onready var label = $Container/Label
@onready var options_button = $Container/Options
@onready var quit_button = $Container/Quit
@onready var timer = $Timer



func _ready():
	curtain.visible = true

	label.text = "[center][wave]GAME ENDED
WINNER: %s [/wave][/center]" % PlayerData.winner

	PlayerData.winner = "None"
	
	timer.start(3)
	if timer.timeout:
		options_button.visible = true
		quit_button.visible = true



func _on_player_1_player_died() -> void:
	PlayerData.winner = "Player 1"


func _on_player_2_player_died() -> void:
	PlayerData.winner = "Player 2"
