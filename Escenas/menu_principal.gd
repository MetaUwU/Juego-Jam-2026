extends Control
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	VidasJugador.hp = 3
	VidasJugador.ganaste = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	audio_stream_player.playing = true
	get_tree().change_scene_to_file("res://Escenas/juego.tscn")
