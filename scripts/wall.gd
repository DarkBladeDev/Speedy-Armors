extends Area2D

func _ready():
	pass

func Wall_Touch_Event(object):
	queue_free()
