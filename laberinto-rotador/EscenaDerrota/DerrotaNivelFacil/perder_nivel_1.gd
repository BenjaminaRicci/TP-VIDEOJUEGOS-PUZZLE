extends Control

func _ready() -> void:
	Global.tiempoMinutos1 = 1
	Global.tiempoSegundos1 = 15

func _on_reintentar_pressed() -> void:
	get_tree().change_scene_to_file("res://Laberintos/Laberinto1/Laberinto1Facil.tscn")


func _on_volver_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
