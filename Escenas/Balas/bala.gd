extends Node2D

const speed = 100
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _process(delta):
	position += transform.x * speed * delta

func _on_area_2d_body_entered(body: Node2D) -> void:
	print("daño")

func _on_killtimer_timeout():
	queue_free()
