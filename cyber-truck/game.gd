extends Node2D

@export var sparks: PackedScene
@export var hud: Node

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("pointer_click"):
		var mouse_position = get_global_mouse_position()
		var new_instance = sparks.instantiate()
		new_instance.global_position = mouse_position
		add_child(new_instance)
		new_instance.emitting = true
		hud._click()
		
	
func _on_timer_timeout() -> void:
	for i in range(hud.pointsPerTime):
		var new_instance = sparks.instantiate()
		var min = Vector2(0, 0)
		var max = Vector2(1024, 600)

		new_instance.global_position = Vector2(
		randi() % int(max.x - min.x) + min.x,
		randi() % int(max.y - min.y) + min.y
	)
		add_child(new_instance)
		new_instance.emitting = true
		hud._click()
