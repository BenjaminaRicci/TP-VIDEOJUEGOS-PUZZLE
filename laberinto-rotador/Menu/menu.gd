extends Control


func _on_nivel_1_pressed() -> void:
	get_tree().change_scene_to_file("res://Laberintos/Laberinto1/Laberinto1Facil.tscn")
	

func _on_nivel_2_pressed() -> void:
	if Global.NivelMax>1 :
		get_tree().change_scene_to_file("res://Laberintos/Laberinto2/Laberinto2Medio.tscn")


func _on_nivel_3_pressed() -> void:
	if Global.NivelMax>2:
		get_tree().change_scene_to_file("res://Laberintos/Laberinto3/Laberinto3Dificil.tscn")
