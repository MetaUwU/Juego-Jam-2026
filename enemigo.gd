extends StaticBody2D

@onready var bala_1 = load("res://Escenas/Balas/bala.tscn")
@onready var bala_2 = load("res://Escenas/Balas/bala_2.tscn")
@onready var bala_3 = preload("res://Escenas/Balas/bala_3.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotate(.5 * delta)
	Spawnear_balas()
	
	#tratando de Spawnear balas aun
func Spawnear_balas():
	var b3= bala_3.instantiate()
	b3.position = self.position
	b3.velocity = 20
	
	
	get_parent().add_child(b3)

	
