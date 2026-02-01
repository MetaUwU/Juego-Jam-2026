extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TextureRect.show()
	$TextureRect2.show()
	$TextureRect3.show()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label.text = str(3)
	if VidasJugador.hp == 2:
		$TextureRect3.hide()
		$Label.text = str(2)
	if VidasJugador.hp == 1:
		$Label.text = str(1)
		$TextureRect2.hide()
	if VidasJugador.hp == 0:
		$TextureRect.hide()
	
	
