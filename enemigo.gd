extends Node2D

const bala_1 = preload("res://Escenas/Balas/bala.tscn")
const bala_2 = preload("res://Escenas/Balas/bala_2.tscn")
const bala_3 = preload("res://Escenas/Balas/bala_3.tscn")

@onready var shoot_timer = $shoot_timer
@onready var rotater = $Rotater


const rotate_speed = 100
const shooter_timer_wait_time = 0.2
const spawn_point_count = 4
const radius = 100

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var step = 2 * PI / spawn_point_count
	
	for i in range(spawn_point_count):
		var spawn_point = Node2D.new()
		var pos = Vector2(radius, 0).rotated(step * 1)
		spawn_point.position = pos
		spawn_point.rotation = pos.angle()
		rotater.add_child(spawn_point)

	shoot_timer.wait_time = shooter_timer_wait_time
	shoot_timer.start()

func _process(delta: float) -> void:
	var new_rotation = rotater.rotation_degrees + rotate_speed * delta
	rotater.rotation_degrees = fmod(new_rotation, 360)

func _on_shoot_timer_timeout() -> void:
	for s in rotater.get_children():
		var b1 = bala_1.instantiate()
		get_tree().root.add_child(b1)
		b1.position = s.global_position
		b1.rotation = s.global_rotation
