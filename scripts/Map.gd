extends TileMapLayer


@export var speed : float = 20.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if PlayerData.game_started:
		position.x = speed * delta
