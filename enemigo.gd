extends Node2D

const bala_1 = preload("res://Escenas/Balas/bala.tscn")
const bala_2 = preload("res://Escenas/Balas/bala_2.tscn")
const bala_3 = preload("res://Escenas/Balas/bala_3.tscn")

@onready var shoot_timer = $shoot_timer
@onready var shoot_timer2 = $shoot_timer2
@onready var shoot_timer3 = $shoot_timer3
@onready var rotater = $Rotater
@onready var rotater2 = $Rotater2
@onready var rotater3 = $Rotater3

const rotate_speed = 100
const rotate_speed2 = 150.5
const rotate_speed3 = 200.25
const shooter_timer_wait_time = 0.2
const spawn_point_count = 4
const radius = 100
const shooter_timer2_wait_time = 0.2
const shooter_timer3_wait_time = 0.05
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var step = 2 * PI / spawn_point_count
	
	for i in range(spawn_point_count):
		var spawn_point = Node2D.new()
		var pos = Vector2(radius, 0).rotated(step * 1)
		spawn_point.position = pos
		spawn_point.rotation = pos.angle()
		rotater2.add_child(spawn_point)

	for p in range(spawn_point_count):
		var spawn_point = Node2D.new()
		var pos = Vector2(radius, 0).rotated(step * 1)
		spawn_point.position = pos
		spawn_point.rotation = pos.angle()
		rotater.add_child(spawn_point)

	for t in range(spawn_point_count):
		var spawn_point = Node2D.new()
		var pos = Vector2(250, 0).rotated(step * 1)
		spawn_point.position = pos
		spawn_point.rotation = pos.angle()
		rotater3.add_child(spawn_point)

	shoot_timer.wait_time = shooter_timer_wait_time
	shoot_timer.start()
	
	shoot_timer2.wait_time = shooter_timer2_wait_time
	shoot_timer2.start()
	
	shoot_timer3.wait_time = shooter_timer3_wait_time
	shoot_timer3.start()
	
func _process(delta: float) -> void:
	var new_rotation = rotater.rotation_degrees + rotate_speed * delta
	rotater.rotation_degrees = fmod(new_rotation, 360)
	
	var new_rotation2 = rotater2.rotation_degrees - rotate_speed2 * delta
	rotater2.rotation_degrees = fmod(new_rotation2, 360)

	var new_rotation3 = rotater3.rotation_degrees - rotate_speed3 * delta
	rotater3.rotation_degrees = fmod(new_rotation3, 360)
	
func _on_shoot_timer_timeout() -> void:
	for s in rotater.get_children():
		var b1 = bala_1.instantiate()
		get_tree().root.add_child(b1)
		b1.position = s.global_position
		b1.rotation = s.global_rotation

func _on_shoot_timer_2_timeout() -> void:
	for d in rotater2.get_children():
		var b2 = bala_2.instantiate()
		get_tree().root.add_child(b2)
		b2.position = d.global_position
		b2.rotation = d.global_rotation



func _on_shoot_timer_3_timeout() -> void:
	for l in rotater3.get_children():
		var b3 = bala_3.instantiate()
		get_tree().root.add_child(b3)
		b3.position = l.global_position
		b3.rotation = l.global_rotation


func _on_ganar_timeout() -> void:
	pass # Replace with function body.
