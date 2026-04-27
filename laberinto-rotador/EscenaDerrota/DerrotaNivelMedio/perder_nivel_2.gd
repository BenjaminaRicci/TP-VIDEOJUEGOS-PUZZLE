extends Control

func _ready() -> void:
	Global.tiempoMinutos2 = 3
	Global.tiempoSegundos2 = 0

func _on_reintentar_pressed() -> void:
	get_tree().change_scene_to_file("res://Laberintos/Laberinto2/Laberinto2Medio.tscn")



func _on_volver_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
