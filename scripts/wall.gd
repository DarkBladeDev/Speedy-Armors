extends Area2D

func _ready():
	
	connect("area_entered", Wall_Touch_Event(self))


func Wall_Touch_Event(object):
	queue_free()
