extends Node


signal player_died(player)


@export_category("Game variables")
@export var score : int = 0
@export var winner : StringName = "None"
