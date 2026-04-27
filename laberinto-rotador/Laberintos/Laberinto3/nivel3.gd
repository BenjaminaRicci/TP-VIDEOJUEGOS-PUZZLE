extends Node2D

func _ready() -> void:
	$Control.setearTimer(Global.tiempoMinutos3, Global.tiempoSegundos3)
	_actualizarTimer()

func _actualizarTimer():
	$Cronometro/Minutos.text=str($Control.minutos)
	$Cronometro/Segundos.text=str($Control.segundos)
	

func _on_timer_2_timeout() -> void:
	print("timer funcionando - seg: ", $Control.segundos)
	if $Control.segundos==0:
		if $Control.minutos>0:
			$Control.minutos-=1
			$Control.segundos=60
		else:
			get_tree().change_scene_to_file("res://EscenaDerrota/DerrotaNivelFacil/perder_nivel_1.tscn")
	$Control.segundos-=1
	_actualizarTimer()

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Menu/Menu.tscn")


func _on_reiniciar_pressed() -> void:
	get_tree().reload_current_scene()


func _input(event):
	if Input.is_action_just_pressed("ui_right") or Input.is_action_just_pressed("ui_up"):
		$Laberinto.rotarMAS90()
		print("Derecha/Arriba")
	if Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_down"):
		$Laberinto.rotarMENOS90()
		print("Izquierda/Abajo")


func _on_area_2d_body_entered(body: Node2D) -> void:
	if(body is RigidBody2D):
		get_tree().change_scene_to_file("res://EscenasVictoria/VictoriaNivelDificil/ganar_nivel_3.tscn")
