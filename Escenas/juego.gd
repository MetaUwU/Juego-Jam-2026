extends Node2D
@onready var musica: AudioStreamPlayer = $AudioStreamPlayer
var music_gameplay = preload("res://Audio/Music/Bullet-Hell-Overdrive.ogg")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	musica.stream = music_gameplay
	musica.play()

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("pausar"):
		if !musica.stream_paused:
			musica.stream_paused = true
		else:
			musica.stream_paused = false
