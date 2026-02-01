extends CharacterBody2D

var SPEED = 300
var direccion

func _ready() -> void:
	$Sprite_prota_1.visible = true
	$Sprite_prota_2.visible = false
	$Sprite_prota_3.visible = false

func _physics_process(delta: float) -> void:
	
	direccion = Vector2(Input.get_axis("Mover_Izquierda","Mover_Derecha"),Input.get_axis("Mover_Arriba","Mover_Abajo" )).normalized()
	velocity = direccion * SPEED
	move_and_slide()
	Cambiar_Mascara()

		
#recontra controlar, esta seguro RE mal
func Cambiar_Mascara():
	if Input.is_action_just_pressed("Mascara_1"):
		set_collision_layer_value(1, true)
		set_collision_layer_value(2, false)
		set_collision_layer_value(3, false)
		
		$Sprite_prota_1.visible = true
		$Sprite_prota_2.visible = false
		$Sprite_prota_3.visible = false
		VidasJugador.mascara = 1
		
		print("Mascara 1")
	
	if Input.is_action_just_pressed("Mascara_2"):
		set_collision_layer_value(2, true)
		set_collision_layer_value(1, false)
		set_collision_layer_value(3, false)
		
		$Sprite_prota_2.visible = true
		$Sprite_prota_3.visible = false
		$Sprite_prota_1.visible = false
		VidasJugador.mascara = 2	
		print("mascara 2")
		
	if Input.is_action_just_pressed("Mascara_3"):
		set_collision_layer_value(3, true)
		set_collision_layer_value(2, false)
		set_collision_layer_value(1, false)
		
		$Sprite_prota_3.visible = true
		$Sprite_prota_2.visible = false
		$Sprite_prota_1.visible = false
		VidasJugador.mascara = 3
		print("Mascara 31sds")
