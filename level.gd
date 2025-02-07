extends Node3D

var coin_count = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$CanvasLayer/Control/Label.text = "Coins picked up: " + str(coin_count) + "/4"
	$CanvasLayer/Control/Timer.text = "Time remeaning: " + str(round($Timer.time_left))
	if coin_count == 4:
		$CanvasLayer/Control/Game_Won_Label.text="Победивте!"
		$CanvasLayer/Control/Label.text = ""


func _on_coin_coin_picked_up() -> void:
	coin_picked_up()
	


func _on_coin_stack_large_coin_stack_picked_up() -> void:
	coin_picked_up()
	


func _on_coin_stack_medium_coin_stack_medium_picked_up() -> void:
	coin_picked_up()


func coin_picked_up():
	coin_count+=1
	print(coin_count)


func _on_timer_timeout() -> void:
	$CanvasLayer/Control/Game_Won_Label.text="Обиди се повторно!"
