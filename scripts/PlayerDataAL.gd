extends Node


signal score_updated


@export_category("Game variables")
@export var score : int = 0
@export var winner : StringName = "None"


func game_over(player: StringName):
	pass
