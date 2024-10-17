extends Node


signal score_updated
signal player_died

var P1_on_wall : bool = false
var P2_on_wall : bool = false


@export_category("Game variables")
@export var score : int = 0
