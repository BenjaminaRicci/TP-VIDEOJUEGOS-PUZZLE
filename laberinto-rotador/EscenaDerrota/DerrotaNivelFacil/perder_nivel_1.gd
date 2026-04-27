extends Control



func _on_reintentar_pressed() -> void:
	get_tree().change_scene_to_file("res://Laberintos/Laberinto1/Laberinto1Facil.tscn")


func _on_volver_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
