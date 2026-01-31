extends CharacterBody2D

var SPEED = 300
var direccion

func _physics_process(delta: float) -> void:
	
	direccion = Vector2(Input.get_axis("Mover_Izquierda","Mover_Derecha"),Input.get_axis("Mover_Arriba","Mover_Abajo" )).normalized()
	velocity = direccion * SPEED
	move_and_slide()
