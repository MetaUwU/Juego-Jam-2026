extends Node2D

const speed = 100
var Vidas_jugador:int = 3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$killtimer.start()
	
func _process(delta):
	position += transform.x * speed * delta

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("daño")
	
	Vidas_jugador -= 1
	print(Vidas_jugador)
	if Vidas_jugador == 0:
		get_tree().change_scene_to_file("res://Escenas/menu_principal.tscn")


func _on_killtimer_timeout():
	queue_free()
