extends Control

func _ready() -> void:
	Global.NivelMax=3
	Global.tiempoMinutos3 = 4
	Global.tiempoSegundos3 = 30	

func _on_volver_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
