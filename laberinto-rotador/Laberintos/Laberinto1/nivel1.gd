extends Node2D

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")

func _input(event):
	if Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("ui_up"):
		$Laberinto.rotarMAS90()
		print("Derecha/Arriba")
	if Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_down"):
		$Laberinto.rotarMENOS90()
		print("Izquierda/Abajo")


func _on_reiniciar_pressed() -> void:
	get_tree().reload_current_scene()
