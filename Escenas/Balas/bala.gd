extends Node2D

const speed = 100
var ganaste:bool = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$killtimer.start()

	
func _process(delta):
	position += transform.x * speed * delta
	if VidasJugador.hp == 0:
		hide()
	if VidasJugador.ganaste == true:
		hide()



func _on_area_2d_body_entered(body: Node2D) -> void:
	print("daño")
	print(VidasJugador.hp)
	if VidasJugador.iframes == false:
		VidasJugador.hp -= 1
	VidasJugador.iframes = true
	$Invincibility.start()
	if VidasJugador.hp == 0:
		get_tree().change_scene_to_file("res://Escenas/Balas/menu_de_perder.tscn")


func _on_killtimer_timeout():
	queue_free()


func _on_invincibility_timeout() -> void:
	VidasJugador.iframes = false
