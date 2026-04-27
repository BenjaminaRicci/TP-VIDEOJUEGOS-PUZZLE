extends Control

func _ready() -> void:
	if Global.NivelMax < 2:
		Global.NivelMax+=1

func _on_volver_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")


func _on_siguiente_nivel_pressed() -> void:
	get_tree().change_scene_to_file("res://Laberintos/Laberinto2/Laberinto2Medio.tscn")
