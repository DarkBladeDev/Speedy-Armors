extends Node


signal score_updated
signal player_died


@export_category("Game variables")
@export var score : int = 0


func game_over(player: String):
	pass
