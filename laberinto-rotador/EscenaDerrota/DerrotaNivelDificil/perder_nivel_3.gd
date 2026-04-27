extends Control

func _ready() -> void:
	Global.tiempoMinutos1 = 4
	Global.tiempoSegundos1 = 30

func _on_reintentar_pressed() -> void:
	get_tree().change_scene_to_file("res://Laberintos/Laberinto3/Laberinto3Dificil.tscn")



func _on_volver_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
