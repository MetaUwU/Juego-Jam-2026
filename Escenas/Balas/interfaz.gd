extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$TextureRect.show()
	$TextureRect2.show()
	$TextureRect3.show()
	$Timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$Label5.text = str(int($Timer.time_left))
	
	$Label.text = str(3)
	
	if VidasJugador.hp == 2:
		$TextureRect3.hide()
		$Label.text = str(2)
	if VidasJugador.hp == 1:
		$Label.text = str(1)
		$TextureRect2.hide()
	if VidasJugador.hp == 0:
		$TextureRect.hide()
		#mascara roja 1 mascara verde 2
	if VidasJugador.mascara == 3:
		$Sprite2D3.show()
		$Sprite2D2.hide()
		$Sprite2D.hide()
	if VidasJugador.mascara == 2:
		$Sprite2D2.show()
		$Sprite2D.hide()
		$Sprite2D3.hide()
	if VidasJugador.mascara == 1:
		$Sprite2D.show()
		$Sprite2D2.hide()
		$Sprite2D3.hide()
