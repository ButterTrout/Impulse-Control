extends Camera3D

const LERP_WEIGHT : float = 0.5
const CAMERA_LOOK_AHEAD_VAL : Vector3 = Vector3(0.25, 1.0, 1.0)
const CAMERA_LOOK_AMOUNT    : float =  64.0  ## Value when player input to look ahead

var target : Node3D = null

func _physics_process(delta: float) -> void:
	_follow_camera_target(delta)

func _follow_camera_target(delta : float) -> void:
	if not target:
		return

	# Offset value is amount to lead the player
	var target_camera_offset : Vector3 = CAMERA_LOOK_AHEAD_VAL
	var target_global_pos    : Vector3 = target.global_position + target_camera_offset

	#target_global_pos += target.camera_look_direction * CAMERA_LOOK_AMOUNT

	var camera_pos_out : Vector3

	camera_pos_out.x = lerpf(global_position.x, target_global_pos.x, LERP_WEIGHT * delta)
	camera_pos_out.y = lerpf(global_position.y, target_global_pos.y, LERP_WEIGHT * delta)
	camera_pos_out.z = lerpf(global_position.z, target_global_pos.z, LERP_WEIGHT * delta)

	global_position = camera_pos_out
