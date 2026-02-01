extends Camera2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Ganar.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_ganar_timeout() -> void:
	VidasJugador.ganaste = true
	get_tree().change_scene_to_file("res://menu_de_ganar.tscn")
