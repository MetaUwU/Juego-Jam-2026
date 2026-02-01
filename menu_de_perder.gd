extends Control
@onready var seleccionar: AudioStreamPlayer = $seleccionar


func _on_button_pressed() -> void:
	seleccionar.playing = true
	get_tree().change_scene_to_file("res://Escenas/menu_principal.tscn")

func _on_jugar_pressed() -> void:
	seleccionar.playing = true
#me da errror	get_tree().change_scene_to_file("res://Escenas/juego.tscn")
