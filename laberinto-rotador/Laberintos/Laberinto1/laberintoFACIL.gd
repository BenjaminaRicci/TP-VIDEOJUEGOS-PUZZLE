extends Node2D

func rotarMAS90():
	_rotar(90)

func rotarMENOS90():
	_rotar(-90)

func _rotar(grados: float):
	var pelota = $Pivot/Pelota/RigidBody2D
	var pos_global = pelota.global_position
	$Pivot.rotation_degrees += grados
	PhysicsServer2D.body_set_state(
		pelota.get_rid(),
		PhysicsServer2D.BODY_STATE_TRANSFORM,
		Transform2D(0.0, pos_global)
	)
	PhysicsServer2D.body_set_state(
		pelota.get_rid(),
		PhysicsServer2D.BODY_STATE_LINEAR_VELOCITY,
		Vector2.ZERO
	)
	PhysicsServer2D.body_set_state(
		pelota.get_rid(),
		PhysicsServer2D.BODY_STATE_ANGULAR_VELOCITY,
		0.0
	)
