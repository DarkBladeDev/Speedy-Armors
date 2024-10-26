extends Control

@onready var curtain = $"."
@onready var label = $Container/Label
@onready var options_button = $Container/Options
@onready var quit_button = $Container/Quit
@onready var timer = $Timer



func game_ended():
	get_tree().paused = true
	curtain.visible = true

	label.text = "[center][wave]GAME ENDED
	WINNER: %s [/wave][/center]" % PlayerData.winner

	PlayerData.winner = "None"
	
	timer.start()
	if timer.timeout:
		options_button.visible = true
		quit_button.visible = true
		

func _on_player_1_player_died() -> void:
	PlayerData.winner = "Player 1"
	game_ended()


func _on_player_2_player_died() -> void:
	PlayerData.winner = "Player 2"
	game_ended()
