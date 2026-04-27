extends Control

func _ready() -> void:
	Global.NivelMax=3

func _on_volver_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")
