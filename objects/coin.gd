extends MeshInstance3D

signal coin_picked_up

var picked_up = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if picked_up:
		queue_free()


func _on_area_3d_body_entered(body: Node3D) -> void:
	coin_picked_up.emit()
	picked_up = true
	
